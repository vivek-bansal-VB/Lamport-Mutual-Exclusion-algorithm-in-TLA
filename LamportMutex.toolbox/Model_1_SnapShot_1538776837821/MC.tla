---- MODULE MC ----
EXTENDS LamportMutex, TLC

\* CONSTANT definitions @modelParameterConstants:0N
const_15387768327601754000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1maxClock
const_15387768327601755000 == 
5
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_15387768327601756000 ==
ClockConstraint
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387768327601757000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387768327601758000 ==
Live
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 18:00:32 EDT 2018 by vivek
