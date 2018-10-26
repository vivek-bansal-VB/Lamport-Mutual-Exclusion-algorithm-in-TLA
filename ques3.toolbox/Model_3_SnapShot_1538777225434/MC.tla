---- MODULE MC ----
EXTENDS MutexLamport, TLC

\* CONSTANT definitions @modelParameterConstants:0maxClock
const_15387772204061839000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1N
const_15387772204061840000 == 
4
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_15387772204061841000 ==
ClockConstraint
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387772204061842000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387772204061843000 ==
Liveness
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 18:07:00 EDT 2018 by vivek
