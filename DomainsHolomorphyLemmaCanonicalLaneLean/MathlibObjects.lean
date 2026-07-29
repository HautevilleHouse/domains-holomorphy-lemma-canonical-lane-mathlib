import DomainsHolomorphyLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ComplexDomain where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier

structure HolomorphyAdmittedObject where
  domain : ComplexDomain
  pseudoconvex : Prop
  boundary : TopologicalSpace.Type
  crHypersurface : Prop
  extensionProperty : Prop
  conclusion : extensionProperty

structure HolomorphyEndgameState where
  object : HolomorphyAdmittedObject

def HolomorphyWitnessClosed (O : HolomorphyAdmittedObject) : Prop :=
  O.extensionProperty

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse
