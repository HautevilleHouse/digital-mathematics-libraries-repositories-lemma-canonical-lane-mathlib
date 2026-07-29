import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

structure SourceExtractionPackage where
  sourceKey : String
  sourceCheckoutHead : String
  sourceCheckoutClean : Bool
  sourceFilesHashed : List (String × String)
  constantSpecsExtracted : Nat
  registryConstantsCount : Nat

structure SourceExtractionEvidence (S : SourceExtractionPackage) where
  sourceKeyClosed : S.sourceKey = "source_repository_identifier"
  sourceCheckoutHeadClosed : S.sourceCheckoutHead = "abc123def456"
  sourceCheckoutCleanClosed : S.sourceCheckoutClean
  sourceFilesHashedClosed : S.sourceFilesHashed.length = 5
  constantSpecsExtractedClosed : S.constantSpecsExtracted = 7
  registryConstantsCountClosed : S.registryConstantsCount = 6

def SourceExtractionClosed (S : SourceExtractionPackage) : Prop :=
  S.sourceKey = "source_repository_identifier" ∧
  S.sourceCheckoutHead = "abc123def456" ∧
  S.sourceCheckoutClean ∧
  S.sourceFilesHashed.length = 5 ∧
  S.constantSpecsExtracted = 7 ∧
  S.registryConstantsCount = 6

theorem source_extraction_closed_from_evidence (S : SourceExtractionPackage) (E : SourceExtractionEvidence S) : SourceExtractionClosed S :=
  And.intro E.sourceKeyClosed (
    And.intro E.sourceCheckoutHeadClosed (
      And.intro E.sourceCheckoutCleanClosed (
        And.intro E.sourceFilesHashedClosed (
          And.intro E.constantSpecsExtractedClosed E.registryConstantsCountClosed))))

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse