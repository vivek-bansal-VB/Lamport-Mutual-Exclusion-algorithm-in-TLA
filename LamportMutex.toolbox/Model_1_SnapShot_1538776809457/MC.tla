---- MODULE MC ----
EXTENDS LamportMutex, TLC

\* CONSTANT definitions @modelParameterConstants:0N
const_15387768052951744000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1maxClock
const_15387768052951745000 == 
4
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_15387768052951746000 ==
ClockConstraint
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387768052951747000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387768052951748000 ==
Live
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 18:00:05 EDT 2018 by vivek
