import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

structure RepositoryStructurePackage where
  repositoryName : String
  sourceKey : String
  packageLayerTranslated : Bool
  sourceHashesRecorded : Bool
  formalizationLayerModeled : Bool
  bridgeLayerModeled : Bool
  theoremBoundaryOpen : Bool
  sourceConjectureClosureClaimed : Bool
  leanBuildChecked : Bool

structure RepositoryStructureEvidence (R : RepositoryStructurePackage) where
  repositoryNameClosed : R.repositoryName = "digital-mathematics-libraries-repositories-lemma"
  sourceKeyClosed : R.sourceKey = "source_repository_identifier"
  packageLayerTranslatedClosed : R.packageLayerTranslated
  sourceHashesRecordedClosed : R.sourceHashesRecorded
  formalizationLayerModeledClosed : R.formalizationLayerModeled
  bridgeLayerModeledClosed : R.bridgeLayerModeled
  theoremBoundaryOpenClosed : R.theoremBoundaryOpen
  sourceConjectureClosureClaimedClosed : ¬ R.sourceConjectureClosureClaimed
  leanBuildCheckedClosed : R.leanBuildChecked

def RepositoryStructureClosed (R : RepositoryStructurePackage) : Prop :=
  R.repositoryName = "digital-mathematics-libraries-repositories-lemma" ∧
  R.sourceKey = "source_repository_identifier" ∧
  R.packageLayerTranslated ∧
  R.sourceHashesRecorded ∧
  R.formalizationLayerModeled ∧
  R.bridgeLayerModeled ∧
  R.theoremBoundaryOpen ∧
  ¬ R.sourceConjectureClosureClaimed ∧
  R.leanBuildChecked

theorem repository_structure_closed_from_evidence (R : RepositoryStructurePackage) (E : RepositoryStructureEvidence R) : RepositoryStructureClosed R :=
  And.intro E.repositoryNameClosed (
    And.intro E.sourceKeyClosed (
      And.intro E.packageLayerTranslatedClosed (
        And.intro E.sourceHashesRecordedClosed (
          And.intro E.formalizationLayerModeledClosed (
            And.intro E.bridgeLayerModeledClosed (
              And.intro E.theoremBoundaryOpenClosed (
                And.intro E.sourceConjectureClosureClaimedClosed E.leanBuildCheckedClosed)))))))

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse