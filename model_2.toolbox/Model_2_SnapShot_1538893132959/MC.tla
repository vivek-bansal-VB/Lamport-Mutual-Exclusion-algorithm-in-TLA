---- MODULE MC ----
EXTENDS LamportOwn2, TLC

\* CONSTANT definitions @modelParameterConstants:0Proc
const_153889309384617000 == 
{1,2}
----

\* CONSTANT definitions @modelParameterConstants:1\ll(p, q)
const_153889309384618000(p, q) == 
p < q
----

\* CONSTANT definitions @modelParameterConstants:2maxClock
const_153889309384619000 == 
9
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_153889309384620000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_153889309384621000 ==
Liveness
----
=============================================================================
\* Modification History
\* Created Sun Oct 07 02:18:13 EDT 2018 by vivek
