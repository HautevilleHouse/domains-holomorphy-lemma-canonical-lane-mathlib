import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : HolomorphyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HolomorphyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse