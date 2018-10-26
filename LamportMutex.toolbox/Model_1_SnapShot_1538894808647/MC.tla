---- MODULE MC ----
EXTENDS LamportMutex, TLC

\* CONSTANT definitions @modelParameterConstants:0N
const_153889480159027000 == 
3
----

\* CONSTANT definitions @modelParameterConstants:1maxClock
const_153889480159028000 == 
3
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_153889480159029000 ==
ClockConstraint
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_153889480159030000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_153889480159031000 ==
Live
----
=============================================================================
\* Modification History
\* Created Sun Oct 07 02:46:41 EDT 2018 by vivek
