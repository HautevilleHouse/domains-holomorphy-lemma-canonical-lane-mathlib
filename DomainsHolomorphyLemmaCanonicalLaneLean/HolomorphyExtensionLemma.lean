import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure HolomorphyExtensionLemma where
  sourceDomain : HolomorphyDomainPackage
  targetDomain : HolomorphyDomainPackage
  extensionExists : Prop
  uniqueness : Prop

def HolomorphyExtensionClosed (E : HolomorphyExtensionLemma) : Prop :=
  E.extensionExists ∧ E.uniqueness

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse