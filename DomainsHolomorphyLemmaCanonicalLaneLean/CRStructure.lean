import DomainsHolomorphyLemmaCanonicalLaneLean.ComplexManifold

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure CRStructurePackage {C : ComplexManifoldPackage} (H : CRHypersurfacePackage C) where
  inducedCRStructure : Type u
  leviFormNondegenerate : Prop
  strictlyPseudoconvex : Prop
  embeddingCodomain : Type v

structure CRStructureEvidence {C : ComplexManifoldPackage} {H : CRHypersurfacePackage C}
    (R : CRStructurePackage C H) where
  leviFormNondegenerateClosed : R.leviFormNondegenerate
  strictlyPseudoconvexClosed : R.strictlyPseudoconvex
  embeddingConditionClosed : Prop

def CRStructureClosed {C : ComplexManifoldPackage} {H : CRHypersurfacePackage C}
    (R : CRStructurePackage C H) : Prop :=
  R.leviFormNondegenerate ∧ R.strictlyPseudoconvex

theorem cr_structure_closed_from_evidence
    {C : ComplexManifoldPackage} {H : CRHypersurfacePackage C}
    (R : CRStructurePackage C H) (E : CRStructureEvidence R) :
    CRStructureClosed R := by
  exact And.intro E.leviFormNondegenerateClosed E.strictlyPseudoconvexClosed

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse
