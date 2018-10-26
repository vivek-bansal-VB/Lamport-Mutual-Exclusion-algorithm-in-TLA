---- MODULE MC ----
EXTENDS MutexLamport, TLC

\* CONSTANT definitions @modelParameterConstants:0maxClock
const_15387771010491819000 == 
6
----

\* CONSTANT definitions @modelParameterConstants:1N
const_15387771010491820000 == 
3
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_15387771010491821000 ==
ClockConstraint
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387771010491822000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387771010491823000 ==
Liveness
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 18:05:01 EDT 2018 by vivek
