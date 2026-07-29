import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DomainsHolomorphyLemmaCanonicalLaneLean.EnvelopeOfHolomorphy

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure DomainsHolomorphyLemmaPackage (M : ComplexManifoldPackage) where
  domain : M.carrier → Prop
  holomorphyDomain : Prop
  equivalenceCondition : Prop

structure DomainsHolomorphyLemmaEvidence {M : ComplexManifoldPackage}
    (D : DomainsHolomorphyLemmaPackage M) where
  holomorphyDomainClosed : D.holomorphyDomain
  equivalenceConditionClosed : D.equivalenceCondition

def DomainsHolomorphyLemmaClosed {M : ComplexManifoldPackage}
    (D : DomainsHolomorphyLemmaPackage M) : Prop :=
  D.holomorphyDomain ∧ D.equivalenceCondition

theorem domains_holomorphy_lemma_closed_from_evidence
    {M : ComplexManifoldPackage} (D : DomainsHolomorphyLemmaPackage M)
    (Ev : DomainsHolomorphyLemmaEvidence D) : DomainsHolomorphyLemmaClosed D := by
  exact And.intro Ev.holomorphyDomainClosed Ev.equivalenceConditionClosed

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse