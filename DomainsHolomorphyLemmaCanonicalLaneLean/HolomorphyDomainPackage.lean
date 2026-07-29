import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure HolomorphyDomainPackage where
  baseSpace : Type u
  baseTopology : TopologicalSpace baseSpace
  openCovering : Set (Set baseSpace)
  sheafCondition : Prop
  localHolomorphy : Prop

def DomainClosed (D : HolomorphyDomainPackage) : Prop :=
  D.openCovering ≠ ∅ ∧ D.localHolomorphy

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse