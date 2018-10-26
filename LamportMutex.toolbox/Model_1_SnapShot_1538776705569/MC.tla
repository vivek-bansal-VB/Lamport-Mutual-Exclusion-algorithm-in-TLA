---- MODULE MC ----
EXTENDS LamportMutex, TLC

\* CONSTANT definitions @modelParameterConstants:0N
const_15387767014781724000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1maxClock
const_15387767014781725000 == 
4
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_15387767014781726000 ==
ClockConstraint
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387767014781727000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387767014781728000 ==
Live
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 17:58:21 EDT 2018 by vivek
