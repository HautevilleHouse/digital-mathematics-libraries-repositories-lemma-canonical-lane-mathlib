import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

structure LinkedDataPackage where
  dublinCoreMetadata : Prop
  dcatDistribution : Prop
  crosswalkRules : Prop
  voIDDescription : Prop

structure LinkedDataEvidence (L : LinkedDataPackage) where
  dublinCoreMetadataClosed : L.dublinCoreMetadata
  dcatDistributionClosed : L.dcatDistribution
  crosswalkRulesClosed : L.crosswalkRules
  voIDDescriptionClosed : L.voIDDescription

def LinkedDataClosed (L : LinkedDataPackage) : Prop :=
  L.dublinCoreMetadata ∧ L.dcatDistribution ∧ L.crosswalkRules ∧ L.voIDDescription

theorem linked_data_closed_from_evidence (L : LinkedDataPackage) (E : LinkedDataEvidence L) :
    LinkedDataClosed L := by
  exact And.intro E.dublinCoreMetadataClosed (And.intro E.dcatDistributionClosed (And.intro E.crosswalkRulesClosed E.voIDDescriptionClosed))

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse