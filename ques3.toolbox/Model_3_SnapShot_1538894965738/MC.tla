---- MODULE MC ----
EXTENDS MutexLamport, TLC

\* CONSTANT definitions @modelParameterConstants:0maxClock
const_153889495769342000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1N
const_153889495769343000 == 
3
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_153889495769344000 ==
ClockConstraint
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_153889495769345000 ==
LiveSpec
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_153889495769346000 ==
Mutex
----
=============================================================================
\* Modification History
\* Created Sun Oct 07 02:49:17 EDT 2018 by vivek
