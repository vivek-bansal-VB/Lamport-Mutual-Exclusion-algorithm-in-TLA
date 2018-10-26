---- MODULE MC ----
EXTENDS LamportOwn2, TLC

\* CONSTANT definitions @modelParameterConstants:0Proc
const_15388930604187000 == 
{1,2}
----

\* CONSTANT definitions @modelParameterConstants:1\ll(p, q)
const_15388930604188000(p, q) == 
p < q
----

\* CONSTANT definitions @modelParameterConstants:2maxClock
const_15388930604189000 == 
3
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_153889306041810000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_153889306041811000 ==
Liveness
----
=============================================================================
\* Modification History
\* Created Sun Oct 07 02:17:40 EDT 2018 by vivek
