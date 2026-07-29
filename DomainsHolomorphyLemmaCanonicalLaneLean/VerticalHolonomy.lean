import HautevilleHouse.DomainsHolomorphyLemmaCanonicalLaneLean.HorizontalDistribution

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure VerticalHolonomy (M : Type*) [TopologicalSpace M] [ChartedSpace ℂ M]
    (D : HorizontalDistribution M) where
  verticalSpace : M → Submodule ℂ (TangentSpace ℂ M)
  involutive : Prop
  holonomyTrivial : Prop

structure VerticalHolonomyEvidence (V : VerticalHolonomy M D) where
  involutiveClosed : V.involutive
  holonomyTrivialClosed : V.holonomyTrivial

def VerticalHolonomyClosed (V : VerticalHolonomy M D) : Prop :=
  V.involutive ∧ V.holonomyTrivial

theorem vertical_holonomy_closed_from_evidence (V : VerticalHolonomy M D)
    (E : VerticalHolonomyEvidence V) : VerticalHolonomyClosed V := by
  exact And.intro E.involutiveClosed E.holonomyTrivialClosed

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse