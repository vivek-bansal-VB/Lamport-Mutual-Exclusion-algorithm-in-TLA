---- MODULE MC ----
EXTENDS MutexLamport, TLC

\* CONSTANT definitions @modelParameterConstants:0maxClock
const_15387765491841694000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1N
const_15387765491841695000 == 
3
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_15387765491841696000 ==
ClockConstraint
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387765491841697000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387765491841698000 ==
Liveness
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 17:55:49 EDT 2018 by vivek
