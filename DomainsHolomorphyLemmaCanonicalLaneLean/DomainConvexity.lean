import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure DomainConvexityPackage where
  domain : Type u
  topology : TopologicalSpace domain
  convexHull : Set domain
  holomorphicallyConvex : Prop
  convexExtensionExists : Prop

structure DomainConvexityEvidence (D : DomainConvexityPackage) where
  holomorphicallyConvexClosed : D.holomorphicallyConvex
  convexExtensionExistsClosed : D.convexExtensionExists

def DomainConvexityClosed (D : DomainConvexityPackage) : Prop :=
  D.holomorphicallyConvex ∧ D.convexExtensionExists

theorem domain_convexity_closed_from_evidence (D : DomainConvexityPackage)
    (E : DomainConvexityEvidence D) : DomainConvexityClosed D := by
  exact And.intro E.holomorphicallyConvexClosed E.convexExtensionExistsClosed

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse