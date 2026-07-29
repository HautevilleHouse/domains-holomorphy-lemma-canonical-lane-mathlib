import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure CousinFirstProblemPackage where
  domain : Type u
  openCover : Set (Set domain)
  meromorphicData : Prop
  solutionExists : Prop

structure CousinFirstProblemEvidence (C : CousinFirstProblemPackage) where
  meromorphicDataClosed : C.meromorphicData
  solutionExistsClosed : C.solutionExists

def CousinFirstProblemClosed (C : CousinFirstProblemPackage) : Prop :=
  C.meromorphicData ∧ C.solutionExists

theorem cousin_first_problem_closed_from_evidence (C : CousinFirstProblemPackage)
    (E : CousinFirstProblemEvidence C) : CousinFirstProblemClosed C := by
  exact And.intro E.meromorphicDataClosed E.solutionExistsClosed

structure CousinSecondProblemPackage where
  domain : Type u
  openCover : Set (Set domain)
  holomorphicData : Prop
  solutionExists : Prop

structure CousinSecondProblemEvidence (C : CousinSecondProblemPackage) where
  holomorphicDataClosed : C.holomorphicData
  solutionExistsClosed : C.solutionExists

def CousinSecondProblemClosed (C : CousinSecondProblemPackage) : Prop :=
  C.holomorphicData ∧ C.solutionExists

theorem cousin_second_problem_closed_from_evidence (C : CousinSecondProblemPackage)
    (E : CousinSecondProblemEvidence C) : CousinSecondProblemClosed C := by
  exact And.intro E.holomorphicDataClosed E.solutionExistsClosed

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse