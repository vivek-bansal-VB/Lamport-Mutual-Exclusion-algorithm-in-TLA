---- MODULE MC ----
EXTENDS LamportOwn2, TLC

\* CONSTANT definitions @modelParameterConstants:0Proc
const_15387918073471971000 == 
{1,2,3,4}
----

\* CONSTANT definitions @modelParameterConstants:1\ll(p, q)
const_15387918073471972000(p, q) == 
p < q
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387918073471973000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387918073471974000 ==
Liveness
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 22:10:07 EDT 2018 by vivek
