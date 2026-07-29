import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure HolomorphicExtensionPackage where
  originalDomain : Type u
  extendedDomain : Type v
  holomorphicFunction : originalDomain → ℂ
  extensionExists : Prop
  extensionAnalytic : Prop
  extensionUnique : Prop

structure HolomorphicExtensionEvidence (H : HolomorphicExtensionPackage) where
  extensionExistsClosed : H.extensionExists
  extensionAnalyticClosed : H.extensionAnalytic
  extensionUniqueClosed : H.extensionUnique

def HolomorphicExtensionClosed (H : HolomorphicExtensionPackage) : Prop :=
  H.extensionExists ∧ H.extensionAnalytic ∧ H.extensionUnique

theorem holomorphic_extension_closed_from_evidence (H : HolomorphicExtensionPackage)
    (E : HolomorphicExtensionEvidence H) : HolomorphicExtensionClosed H := by
  exact And.intro E.extensionExistsClosed (And.intro E.extensionAnalyticClosed E.extensionUniqueClosed)

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse