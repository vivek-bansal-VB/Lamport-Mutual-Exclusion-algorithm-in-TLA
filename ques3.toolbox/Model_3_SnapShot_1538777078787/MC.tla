---- MODULE MC ----
EXTENDS MutexLamport, TLC

\* CONSTANT definitions @modelParameterConstants:0maxClock
const_15387770737541809000 == 
5
----

\* CONSTANT definitions @modelParameterConstants:1N
const_15387770737541810000 == 
3
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_15387770737541811000 ==
ClockConstraint
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387770737541812000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387770737541813000 ==
Liveness
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 18:04:33 EDT 2018 by vivek
