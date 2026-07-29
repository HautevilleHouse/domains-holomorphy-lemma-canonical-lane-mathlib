import canonicalLaneMathlib.AdmissibleClass
import DomainsHolomorphyLemmaCanonicalLaneLean.DomainsHolomorphyBridge

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure HolomorphicExtensionPackage {D : DomainsHolomorphyPackage} where
  originalDomain : Type u
  extensionDomain : Type v
  holomorphicFunctionOnOriginal : Prop
  analyticContinuation : Prop
  maximalExtension : Prop

structure HolomorphicExtensionEvidence {D : DomainsHolomorphyPackage}
    (E : HolomorphicExtensionPackage D) where
  holomorphicFunctionOnOriginalClosed : E.holomorphicFunctionOnOriginal
  analyticContinuationClosed : E.analyticContinuation
  maximalExtensionClosed : E.maximalExtension

def HolomorphicExtensionClosed {D : DomainsHolomorphyPackage}
    (E : HolomorphicExtensionPackage D) : Prop :=
  E.holomorphicFunctionOnOriginal ∧ E.analyticContinuation ∧ E.maximalExtension

theorem holomorphic_extension_closed_from_evidence {D : DomainsHolomorphyPackage}
    (E : HolomorphicExtensionPackage D) (Ev : HolomorphicExtensionEvidence E) :
    HolomorphicExtensionClosed E := by
  exact And.intro Ev.holomorphicFunctionOnOriginalClosed
    (And.intro Ev.analyticContinuationClosed Ev.maximalExtensionClosed)

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse
