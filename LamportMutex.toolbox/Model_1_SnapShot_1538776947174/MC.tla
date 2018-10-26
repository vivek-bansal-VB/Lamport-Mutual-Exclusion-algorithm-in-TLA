---- MODULE MC ----
EXTENDS LamportMutex, TLC

\* CONSTANT definitions @modelParameterConstants:0N
const_15387769421441784000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:1maxClock
const_15387769421441785000 == 
3
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_15387769421441786000 ==
ClockConstraint
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387769421441787000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387769421441788000 ==
Live
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 18:02:22 EDT 2018 by vivek
