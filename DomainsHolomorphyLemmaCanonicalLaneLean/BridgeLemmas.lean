import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HolomorphyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse