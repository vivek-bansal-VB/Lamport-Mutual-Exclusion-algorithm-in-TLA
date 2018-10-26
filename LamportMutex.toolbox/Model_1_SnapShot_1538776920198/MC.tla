---- MODULE MC ----
EXTENDS LamportMutex, TLC

\* CONSTANT definitions @modelParameterConstants:0N
const_15387769171711774000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:1maxClock
const_15387769171711775000 == 
2
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_15387769171711776000 ==
ClockConstraint
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387769171711777000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387769171711778000 ==
Live
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 18:01:57 EDT 2018 by vivek
