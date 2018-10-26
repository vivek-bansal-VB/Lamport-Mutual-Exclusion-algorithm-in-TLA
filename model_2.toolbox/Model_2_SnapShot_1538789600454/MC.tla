---- MODULE MC ----
EXTENDS LamportOwn2, TLC

\* CONSTANT definitions @modelParameterConstants:0Proc
const_15387895582801927000 == 
{1,2}
----

\* CONSTANT definitions @modelParameterConstants:1\ll(p, q)
const_15387895582801928000(p, q) == 
p < q
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387895582801929000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387895582801930000 ==
Liveness
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 21:32:38 EDT 2018 by vivek
