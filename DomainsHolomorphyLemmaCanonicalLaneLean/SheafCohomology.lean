import DomainsHolomorphyLemmaCanonicalLaneLean.CohomologyFoundation

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure SheafCohomologyPackage {C : ComplexManifoldPackage} {S : SheafPackage C} where
  sheafCohomologyGroups : Type u
  cechCohomologyIsomorphic : Prop
  vanishingConditions : Prop
  exactSequences : Prop

structure SheafCohomologyEvidence {C : ComplexManifoldPackage} {S : SheafPackage C}
    (H : SheafCohomologyPackage C S) where
  cechCohomologyIsomorphicClosed : H.cechCohomologyIsomorphic
  vanishingConditionsClosed : H.vanishingConditions
  exactSequencesClosed : H.exactSequences

def SheafCohomologyClosed {C : ComplexManifoldPackage} {S : SheafPackage C}
    (H : SheafCohomologyPackage C S) : Prop :=
  H.cechCohomologyIsomorphic ∧ H.vanishingConditions ∧ H.exactSequences

theorem sheaf_cohomology_closed_from_evidence
    {C : ComplexManifoldPackage} {S : SheafPackage C}
    (H : SheafCohomologyPackage C S) (E : SheafCohomologyEvidence H) :
    SheafCohomologyClosed H := by
  exact And.intro E.cechCohomologyIsomorphicClosed
    (And.intro E.vanishingConditionsClosed E.exactSequencesClosed)

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse
