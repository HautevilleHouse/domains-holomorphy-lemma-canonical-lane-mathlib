import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DomainsHolomorphyLemmaCanonicalLaneLean.HolomorphicExtension

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure EnvelopeOfHolomorphyPackage (M : ComplexManifoldPackage) where
  originalDomain : M.carrier → Prop
  envelope : M.carrier → Prop
  isMaximal : Prop
  existence : Prop

structure EnvelopeOfHolomorphyEvidence {M : ComplexManifoldPackage}
    (E : EnvelopeOfHolomorphyPackage M) where
  isMaximalClosed : E.isMaximal
  existenceClosed : E.existence

def EnvelopeOfHolomorphyClosed {M : ComplexManifoldPackage}
    (E : EnvelopeOfHolomorphyPackage M) : Prop :=
  E.isMaximal ∧ E.existence

theorem envelope_of_holomorphy_closed_from_evidence
    {M : ComplexManifoldPackage} (E : EnvelopeOfHolomorphyPackage M)
    (Ev : EnvelopeOfHolomorphyEvidence E) : EnvelopeOfHolomorphyClosed E := by
  exact And.intro Ev.isMaximalClosed Ev.existenceClosed

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse