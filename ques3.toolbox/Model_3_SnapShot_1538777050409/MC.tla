---- MODULE MC ----
EXTENDS MutexLamport, TLC

\* CONSTANT definitions @modelParameterConstants:0maxClock
const_15387770443651799000 == 
4
----

\* CONSTANT definitions @modelParameterConstants:1N
const_15387770443651800000 == 
3
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_15387770443651801000 ==
ClockConstraint
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387770443651802000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387770443651803000 ==
Liveness
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 18:04:04 EDT 2018 by vivek
