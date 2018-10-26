---- MODULE MC ----
EXTENDS LamportMutex, TLC

\* CONSTANT definitions @modelParameterConstants:0N
const_15387768771411764000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1maxClock
const_15387768771411765000 == 
6
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_15387768771411766000 ==
ClockConstraint
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387768771411767000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387768771411768000 ==
Live
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 18:01:17 EDT 2018 by vivek
