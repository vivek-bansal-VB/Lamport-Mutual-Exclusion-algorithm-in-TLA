---- MODULE MC ----
EXTENDS MutexLamport, TLC

\* CONSTANT definitions @modelParameterConstants:0maxClock
const_15387771412261829000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:1N
const_15387771412261830000 == 
4
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_15387771412261831000 ==
ClockConstraint
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387771412261832000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387771412261833000 ==
Liveness
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 18:05:41 EDT 2018 by vivek
