---- MODULE MC ----
EXTENDS LamportMutex, TLC

\* CONSTANT definitions @modelParameterConstants:0N
const_15387767244681734000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1maxClock
const_15387767244681735000 == 
5
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_15387767244681736000 ==
ClockConstraint
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387767244681737000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387767244681738000 ==
Live
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 17:58:44 EDT 2018 by vivek
