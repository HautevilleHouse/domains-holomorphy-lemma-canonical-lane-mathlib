import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure HolomorphicSeparabilityPackage where
  domain : Type u
  points : domain × domain
  holomorphicFunctionSeparates : Prop
  weierstrassPolynomialConstructed : Prop
  discriminantVanishes : Prop

structure HolomorphicSeparabilityEvidence (S : HolomorphicSeparabilityPackage) where
  holomorphicFunctionSeparatesClosed : S.holomorphicFunctionSeparates
  weierstrassPolynomialConstructedClosed : S.weierstrassPolynomialConstructed
  discriminantVanishesClosed : S.discriminantVanishes

def HolomorphicSeparabilityClosed (S : HolomorphicSeparabilityPackage) : Prop :=
  S.holomorphicFunctionSeparates ∧ S.weierstrassPolynomialConstructed ∧ S.discriminantVanishes

theorem holomorphic_separability_closed_from_evidence (S : HolomorphicSeparabilityPackage)
    (E : HolomorphicSeparabilityEvidence S) : HolomorphicSeparabilityClosed S := by
  exact And.intro E.holomorphicFunctionSeparatesClosed
    (And.intro E.weierstrassPolynomialConstructedClosed E.discriminantVanishesClosed)

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse