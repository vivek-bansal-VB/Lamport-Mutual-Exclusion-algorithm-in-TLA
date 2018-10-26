---- MODULE MC ----
EXTENDS LamportOwn2, TLC

\* CONSTANT definitions @modelParameterConstants:0Proc
const_15387898348311939000 == 
{1,2}
----

\* CONSTANT definitions @modelParameterConstants:1\ll(p, q)
const_15387898348311940000(p, q) == 
p < q
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387898348311941000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387898348311942000 ==
Liveness
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 21:37:14 EDT 2018 by vivek
