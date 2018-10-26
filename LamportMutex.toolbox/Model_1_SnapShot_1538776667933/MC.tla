---- MODULE MC ----
EXTENDS LamportMutex, TLC

\* CONSTANT definitions @modelParameterConstants:0N
const_15387766638961719000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1maxClock
const_15387766638961720000 == 
4
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_15387766638961721000 ==
ClockConstraint
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387766638961722000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387766638961723000 ==
Live
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 17:57:43 EDT 2018 by vivek
