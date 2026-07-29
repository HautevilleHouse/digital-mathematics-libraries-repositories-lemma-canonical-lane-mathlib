import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

structure TheoremStatement where
  repositoryName : String
  theoremName : String
  canonicalStatement : Prop
  classicalBoundary : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  {
    repositoryName := "digital-mathematics-libraries-repositories-lemma"
    theoremName := "DigitalMathematicsLibrariesRepositoriesLemma"
    canonicalStatement := True
    classicalBoundary := "Unrestricted classical closure carried"
    carriedRemainder := "Source conjecture closure remains outside admitted class"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.repositoryName = "digital-mathematics-libraries-repositories-lemma" := by
  rfl

theorem theorem_statement_canonical_statement_defined :
    sourceTheoremStatement.canonicalStatement := by
  trivial

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse