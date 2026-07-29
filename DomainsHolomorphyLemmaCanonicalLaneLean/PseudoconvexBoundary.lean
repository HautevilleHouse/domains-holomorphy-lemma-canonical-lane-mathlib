import HautevilleHouse.DomainsHolomorphyLemmaCanonicalLaneLean.CRGeometry

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure PseudoconvexBoundary (Ω : Type*) [TopologicalSpace Ω] [ChartedSpace ℂ Ω] where
  boundary : Set Ω
  strictlyPseudoconvex : Prop
  boundarySmooth : Prop

structure PseudoconvexBoundaryEvidence (B : PseudoconvexBoundary Ω) where
  strictlyPseudoconvexClosed : B.strictlyPseudoconvex
  boundarySmoothClosed : B.boundarySmooth

def PseudoconvexBoundaryClosed (B : PseudoconvexBoundary Ω) : Prop :=
  B.strictlyPseudoconvex ∧ B.boundarySmooth

theorem pseudoconvex_boundary_closed_from_evidence (B : PseudoconvexBoundary Ω)
    (E : PseudoconvexBoundaryEvidence B) : PseudoconvexBoundaryClosed B := by
  exact And.intro E.strictlyPseudoconvexClosed E.boundarySmoothClosed

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse