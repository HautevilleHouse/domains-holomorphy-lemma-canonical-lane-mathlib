import canonicalLaneMathlib.AdmissibleClass
import DomainsHolomorphyLemmaCanonicalLaneLean.DomainsHolomorphyBridge
import DomainsHolomorphyLemmaCanonicalLaneLean.HolomorphicExtension

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DomainsHolomorphyClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedDomainsHolomorphyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_domains_holomorphy_endgame (A : AdmissibleClass) :
    ConstrainedDomainsHolomorphyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse
