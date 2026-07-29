import HautevilleHouse.DomainsHolomorphyLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace DomainsHolomorphyLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "domains-holomorphy-lemma-canonical-lane",
    theoremName := "Domains Holomorphy Lemma",
    classicalBoundary := "classical boundary: full domain holomorphy",
    manifoldConstrainedStatement := "constrained domains holomorphy closure",
    certificateLane := "domains_holomorphy_constrained",
    carriedRemainder := "remainder: open boundary"
  }

theorem theorem_statement_source_key_checked : sourceTheoremStatement.sourceKey = "domains-holomorphy-lemma-canonical-lane" := by
  rfl

end DomainsHolomorphyLemmaCanonicalLaneLean
end HautevilleHouse