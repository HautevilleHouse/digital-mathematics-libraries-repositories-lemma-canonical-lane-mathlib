import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.String.Basic

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

structure MathlibIntegrationPackage where
  leanVersion : String
  mathlibCheckedOut : Bool
  theoremStatementImported : Bool
  finalTheoremImported : Bool
  commonCoreImported : Bool

structure MathlibIntegrationEvidence (M : MathlibIntegrationPackage) where
  leanVersionClosed : M.leanVersion = "4.12.0"
  mathlibCheckedOutClosed : M.mathlibCheckedOut
  theoremStatementImportedClosed : M.theoremStatementImported
  finalTheoremImportedClosed : M.finalTheoremImported
  commonCoreImportedClosed : M.commonCoreImported

def MathlibIntegrationClosed (M : MathlibIntegrationPackage) : Prop :=
  M.leanVersion = "4.12.0" ∧
  M.mathlibCheckedOut ∧
  M.theoremStatementImported ∧
  M.finalTheoremImported ∧
  M.commonCoreImported

theorem mathlib_integration_closed_from_evidence (M : MathlibIntegrationPackage) (E : MathlibIntegrationEvidence M) : MathlibIntegrationClosed M :=
  And.intro E.leanVersionClosed (
    And.intro E.mathlibCheckedOutClosed (
      And.intro E.theoremStatementImportedClosed (
        And.intro E.finalTheoremImportedClosed E.commonCoreImportedClosed)))

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse