import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HolomorphySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HolomorphyAdmittedObject where
  space : HolomorphySpace
  domainProperty : Prop
  holomorphicExtension : Prop
  conclusion : holomorphicExtension

structure HolomorphyEndgameState where
  object : HolomorphyAdmittedObject

def HolomorphyWitnessClosed (O : HolomorphyAdmittedObject) : Prop :=
  O.holomorphicExtension

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse