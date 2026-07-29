import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure OkaWeilPackage where
  domain : Type u
  compactSubset : Set domain
  holomorphicApproximation : Prop
  uniformConvergence : Prop

structure OkaWeilEvidence (O : OkaWeilPackage) where
  holomorphicApproximationClosed : O.holomorphicApproximation
  uniformConvergenceClosed : O.uniformConvergence

def OkaWeilClosed (O : OkaWeilPackage) : Prop :=
  O.holomorphicApproximation ∧ O.uniformConvergence

theorem oka_weil_closed_from_evidence (O : OkaWeilPackage)
    (E : OkaWeilEvidence O) : OkaWeilClosed O := by
  exact And.intro E.holomorphicApproximationClosed E.uniformConvergenceClosed

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse