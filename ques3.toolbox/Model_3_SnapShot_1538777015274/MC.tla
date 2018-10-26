---- MODULE MC ----
EXTENDS MutexLamport, TLC

\* CONSTANT definitions @modelParameterConstants:0maxClock
const_15387770092341789000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1N
const_15387770092341790000 == 
3
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_15387770092341791000 ==
ClockConstraint
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387770092341792000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387770092341793000 ==
Liveness
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 18:03:29 EDT 2018 by vivek
