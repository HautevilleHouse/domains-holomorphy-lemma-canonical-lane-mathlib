import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure DomainsHolomorphyPackage where
  complexManifold : Type u
  topology : TopologicalSpace complexManifold
  complexStructure : Type v
  holomorphicFunction : Prop
  domainHolomorphyCondition : Prop
  envelopeOfHolomorphy : Prop

structure DomainsHolomorphyEvidence (D : DomainsHolomorphyPackage) where
  holomorphicFunctionClosed : D.holomorphicFunction
  domainHolomorphyConditionClosed : D.domainHolomorphyCondition
  envelopeOfHolomorphyClosed : D.envelopeOfHolomorphy

def DomainsHolomorphyClosed (D : DomainsHolomorphyPackage) : Prop :=
  D.holomorphicFunction ∧ D.domainHolomorphyCondition ∧ D.envelopeOfHolomorphy

theorem domains_holomorphy_closed_from_evidence (D : DomainsHolomorphyPackage)
    (E : DomainsHolomorphyEvidence D) : DomainsHolomorphyClosed D := by
  exact And.intro E.holomorphicFunctionClosed
    (And.intro E.domainHolomorphyConditionClosed E.envelopeOfHolomorphyClosed)

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse
