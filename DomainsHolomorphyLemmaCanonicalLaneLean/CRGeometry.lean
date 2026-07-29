import HautevilleHouse.DomainsHolomorphyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure CRGeometry (M : Type*) [TopologicalSpace M] [ChartedSpace ℂ M] where
  crDimension : ℕ
  leviFormNondegenerate : Prop
  strictlyPseudoconvex : Prop

structure CRGeometryEvidence (G : CRGeometry M) where
  leviFormNondegenerateClosed : G.leviFormNondegenerate
  strictlyPseudoconvexClosed : G.strictlyPseudoconvex

def CRGeometryClosed (G : CRGeometry M) : Prop :=
  G.leviFormNondegenerate ∧ G.strictlyPseudoconvex

theorem cr_geometry_closed_from_evidence (G : CRGeometry M)
    (E : CRGeometryEvidence G) : CRGeometryClosed G := by
  exact And.intro E.leviFormNondegenerateClosed E.strictlyPseudoconvexClosed

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse