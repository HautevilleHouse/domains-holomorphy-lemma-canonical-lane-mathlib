import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure ComplexManifoldPackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  holomorphicAtlas : Prop
  complexDimensionOne : Prop
  holomorphicTransitionMaps : Prop

structure ComplexAnalyticEvidence (M : ComplexManifoldPackage) where
  holomorphicAtlasClosed : M.holomorphicAtlas
  complexDimensionOneClosed : M.complexDimensionOne
  holomorphicTransitionMapsClosed : M.holomorphicTransitionMaps

def ComplexAnalyticClosed (M : ComplexManifoldPackage) : Prop :=
  M.holomorphicAtlas ∧ M.complexDimensionOne ∧ M.holomorphicTransitionMaps

theorem complex_analytic_closed_from_evidence (M : ComplexManifoldPackage)
    (E : ComplexAnalyticEvidence M) : ComplexAnalyticClosed M := by
  exact And.intro E.holomorphicAtlasClosed
    (And.intro E.complexDimensionOneClosed E.holomorphicTransitionMapsClosed)

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse