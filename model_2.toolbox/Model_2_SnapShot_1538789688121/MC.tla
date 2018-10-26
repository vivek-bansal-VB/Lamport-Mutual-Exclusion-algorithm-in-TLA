---- MODULE MC ----
EXTENDS LamportOwn2, TLC

\* CONSTANT definitions @modelParameterConstants:0Proc
const_15387896690241931000 == 
{1,2}
----

\* CONSTANT definitions @modelParameterConstants:1\ll(p, q)
const_15387896690241932000(p, q) == 
p < q
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15387896690241933000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_15387896690241934000 ==
Liveness
----
=============================================================================
\* Modification History
\* Created Fri Oct 05 21:34:29 EDT 2018 by vivek
