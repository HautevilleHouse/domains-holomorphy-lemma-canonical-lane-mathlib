import HautevilleHouse.DomainsHolomorphyLemmaCanonicalLaneLean.PseudoconvexBoundary

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure EnvelopeHolomorphy (Ω : Type*) [TopologicalSpace Ω] [ChartedSpace ℂ Ω]
    (B : PseudoconvexBoundary Ω) where
  envelope : Set Ω
  holomorphicExtension : (Ω → ℂ) → (envelope → ℂ)
  maximalDomain : Prop

structure EnvelopeHolomorphyEvidence (E : EnvelopeHolomorphy Ω B) where
  maximalDomainClosed : E.maximalDomain

def EnvelopeHolomorphyClosed (E : EnvelopeHolomorphy Ω B) : Prop :=
  E.maximalDomain

theorem envelope_holomorphy_closed_from_evidence (E : EnvelopeHolomorphy Ω B)
    (Ev : EnvelopeHolomorphyEvidence E) : EnvelopeHolomorphyClosed E := by
  exact Ev.maximalDomainClosed

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse