import HautevilleHouse.DomainsHolomorphyLemmaCanonicalLaneLean.EnvelopeHolomorphy

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure ContinuationPrinciple (Ω : Type*) [TopologicalSpace Ω] [ChartedSpace ℂ Ω]
    (B : PseudoconvexBoundary Ω) (E : EnvelopeHolomorphy Ω B) where
  continuousExtension : Prop
  boundaryUniqueness : Prop

structure ContinuationPrincipleEvidence (C : ContinuationPrinciple Ω B E) where
  continuousExtensionClosed : C.continuousExtension
  boundaryUniquenessClosed : C.boundaryUniqueness

def ContinuationPrincipleClosed (C : ContinuationPrinciple Ω B E) : Prop :=
  C.continuousExtension ∧ C.boundaryUniqueness

theorem continuation_principle_closed_from_evidence (C : ContinuationPrinciple Ω B E)
    (Ev : ContinuationPrincipleEvidence C) : ContinuationPrincipleClosed C := by
  exact And.intro Ev.continuousExtensionClosed Ev.boundaryUniquenessClosed

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse