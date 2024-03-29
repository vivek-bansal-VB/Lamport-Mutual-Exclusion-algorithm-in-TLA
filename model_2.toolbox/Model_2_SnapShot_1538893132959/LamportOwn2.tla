----------------------- MODULE LamportOwn2 -----------------------

EXTENDS Naturals,Sequences
CONSTANT Proc, _\ll_, maxClock
ASSUME \A p \in Proc : /\ \lnot p \ll p
                       /\ \A q \in Proc \ {p} : (p \ll q) \/ (q \ll p)
                       /\ \A q,r \in Proc : (p \ll q) /\ (q \ll r) => (p \ll r)
ASSUME maxClockType == maxClock \in Nat
a \prec b == \/ a.TS < b.TS
             \/ (a.TS = b.TS ) /\ (a.proc \ll b.proc)
-------------------------------------------------------------------

VARIABLES state, msgQ, reqSet, clock, lastTSent, lastTRcvd
vars == <<state, msgQ, reqSet, clock, lastTSent, lastTRcvd >>
Init == /\ state = [ p \in Proc |-> "idle"]
        /\ msgQ = [ p \in Proc |-> [q \in Proc \ {p} |-> <<>> ] ]
        /\ reqSet = [ p \in Proc |-> {} ]
        /\ clock \in [Proc -> 1..maxClock]
        /\ lastTSent = [ p \in Proc |-> [q \in Proc \ {p} |-> 0 ] ]
        /\ lastTRcvd = [ p \in Proc |-> [q \in Proc \ {p} |-> 0 ] ]
-------------------------------------------------------------------
Request(p) ==
   /\ state[p] = "idle"
   /\ state' = [state EXCEPT ![p] = "waiting"]
   /\ \E n \in 1..maxClock:
         /\ clock' = [clock EXCEPT ![p] = n]
         /\ n > clock[p]
         /\ LET msg == [TS |-> n, proc |-> p,  cmd |-> "acquire"]
            IN /\ msgQ' = [msgQ EXCEPT ![p] = 
                                            [q \in Proc \ {p} |-> Append(@[q], msg )] ]
               /\ reqSet' = [reqSet EXCEPT ![p] = @ \union {msg} ]
         /\ lastTSent' = [lastTSent EXCEPT ![p] =  [q \in Proc \ {p} |-> n]]
   /\ UNCHANGED lastTRcvd
   
Acquire(p) ==
   LET pReq == CHOOSE req \in reqSet[p] : req.proc = p
   IN /\ state[p] = "waiting"
      /\ \A req \in reqSet[p] \ {pReq} : pReq \prec req
      /\ \A q \in Proc \ {p} : pReq \prec [ TS |-> lastTRcvd[p][q]+1, proc |-> q ]
      /\ state' = [state EXCEPT ![p] = "owner"]
      /\ reqSet' = [reqSet EXCEPT ![p] = @ \ {pReq} ]
      /\ UNCHANGED << msgQ, clock, lastTSent, lastTRcvd >>


Release(p) ==
   /\ state[p] = "owner"
   /\ state' = [state EXCEPT ![p] = "idle"]
   /\ LET msg == [TS |-> clock[p], proc |-> p, cmd |-> "release"]
      IN msgQ' = [ msgQ EXCEPT ![p] = 
                                     [ q \in Proc \ {p} |-> Append(@[q], msg)] ]
   /\ lastTSent' = [lastTSent EXCEPT ![p] =  [q \in Proc \ {p} |-> clock[p] ]]                          
   /\ UNCHANGED << clock, lastTRcvd, reqSet >>  

RcvMsg(p, q) ==
   LET msg == Head(msgQ[q][p])
       msgQTail ==  [msgQ EXCEPT ![q][p] = Tail(@)]
       ack == [TS |-> clock'[p], proc |-> p , cmd |-> "ack"]
   IN /\ msgQ[q][p] /= <<>>
      /\ clock' = [clock EXCEPT ![p] = IF msg.TS > @ THEN msg.TS
                                                     ELSE @]
      /\ IF /\ msg.cmd = "acquire"
            /\ [TS |-> lastTSent[p][q]+1, proc |-> p] \prec msg
         THEN  /\ msgQ' = [msgQTail EXCEPT ![p][q] =  Append(@, ack)]
               /\ lastTSent' = [lastTSent EXCEPT ![p][q] = clock'[p]] \* check whether its clock' or clock
         ELSE /\ msgQ' = msgQTail
              /\ UNCHANGED lastTSent
              
      /\ lastTRcvd' = [ lastTRcvd EXCEPT ![p][q] = msg.TS ]
      /\ reqSet' = [reqSet EXCEPT ![p] = 
                      CASE msg.cmd = "acquire" -> @ \union {msg}
                        [] msg.cmd = "release" -> {m \in @ : m.proc /=q}
                        [] msg.cmd = "ack" -> @]
      /\ UNCHANGED state
Tick(p) == /\ \E n \in 1..maxClock : /\ n > clock[p]
                             /\ clock' = [ clock EXCEPT ![p] = n ]
           /\ UNCHANGED << state, msgQ, reqSet, lastTSent, lastTRcvd>>
-----------------------------------------------------------------------------------------
Mutex == \A p,q \in Proc:state[p] = "owner" /\ state[q] = "owner" => p = q

Next == \E p \in Proc : \/ Request(p) \/ Acquire(p) \/Release(p)
                        \/ \E q \in Proc \ {p} : RcvMsg(p, q)
                        \/ Tick(p)
                       
Liveness == \A p \in Proc : /\ WF_vars(Acquire(p))
                            /\ \A q \in Proc \ {p} : WF_vars(RcvMsg(p, q))
Spec == Init /\ [][Next]_vars /\ Liveness
=============================================================================
