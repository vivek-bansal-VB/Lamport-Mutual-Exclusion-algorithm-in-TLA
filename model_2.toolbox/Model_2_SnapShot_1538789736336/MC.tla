---- MODULE MC ----
EXTENDS LamportOwn2, TLC

\* CONSTANT definitions @modelParameterConstants:0Proc
const_15387897262851935000 == 
{1,2}
----

\* CONSTANT definitions @modelParameterConstants:1\ll(p, q)
const_15387897262851936000(p, q) == 
p < q
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387897262851937000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387897262851938000 ==
Liveness
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 21:35:26 EDT 2018 by vivek
