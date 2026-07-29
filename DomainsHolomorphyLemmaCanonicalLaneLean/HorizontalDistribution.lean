import HautevilleHouse.DomainsHolomorphyLemmaCanonicalLaneLean.CRGeometry

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure HorizontalDistribution (M : Type*) [TopologicalSpace M] [ChartedSpace ℂ M] where
  fiber : M → Submodule ℂ (TangentSpace ℂ M)
  integrable : Prop
  closedUnderLieBracket : Prop

structure HorizontalDistributionEvidence (D : HorizontalDistribution M) where
  integrableClosed : D.integrable
  closedUnderLieBracketClosed : D.closedUnderLieBracket

def HorizontalDistributionClosed (D : HorizontalDistribution M) : Prop :=
  D.integrable ∧ D.closedUnderLieBracket

theorem horizontal_distribution_closed_from_evidence (D : HorizontalDistribution M)
    (E : HorizontalDistributionEvidence D) : HorizontalDistributionClosed D := by
  exact And.intro E.integrableClosed E.closedUnderLieBracketClosed

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse