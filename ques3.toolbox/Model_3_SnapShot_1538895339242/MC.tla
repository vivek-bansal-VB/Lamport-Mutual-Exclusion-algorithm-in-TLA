---- MODULE MC ----
EXTENDS MutexLamport, TLC

\* CONSTANT definitions @modelParameterConstants:0maxClock
const_153889505263952000 == 
5
----

\* CONSTANT definitions @modelParameterConstants:1N
const_153889505263953000 == 
3
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_153889505263954000 ==
ClockConstraint
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_153889505263955000 ==
LiveSpec
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_153889505263956000 ==
Mutex
----
=============================================================================
\* Modification History
\* Created Sun Oct 07 02:50:52 EDT 2018 by vivek
