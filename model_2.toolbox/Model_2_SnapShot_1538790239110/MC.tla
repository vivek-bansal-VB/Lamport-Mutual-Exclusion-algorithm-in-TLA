---- MODULE MC ----
EXTENDS LamportOwn2, TLC

\* CONSTANT definitions @modelParameterConstants:0Proc
const_15387900316681959000 == 
{1,2,3}
----

\* CONSTANT definitions @modelParameterConstants:1\ll(p, q)
const_15387900316681960000(p, q) == 
p < q
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387900316681961000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387900316681962000 ==
Liveness
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 21:40:31 EDT 2018 by vivek
