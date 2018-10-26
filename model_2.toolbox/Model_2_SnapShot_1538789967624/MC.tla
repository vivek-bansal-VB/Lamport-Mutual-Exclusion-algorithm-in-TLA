---- MODULE MC ----
EXTENDS LamportOwn2, TLC

\* CONSTANT definitions @modelParameterConstants:0Proc
const_15387899595641947000 == 
{1,2}
----

\* CONSTANT definitions @modelParameterConstants:1\ll(p, q)
const_15387899595641948000(p, q) == 
p < q
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387899595641949000 ==
Spec
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_15387899595641950000 ==
Mutex
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 21:39:19 EDT 2018 by vivek
