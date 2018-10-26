---- MODULE MC ----
EXTENDS MutexLamport, TLC

\* CONSTANT definitions @modelParameterConstants:0maxClock
const_15387795343291844000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1N
const_15387795343291845000 == 
4
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_15387795343291846000 ==
ClockConstraint
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387795343291847000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387795343291848000 ==
Liveness
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 18:45:34 EDT 2018 by vivek
