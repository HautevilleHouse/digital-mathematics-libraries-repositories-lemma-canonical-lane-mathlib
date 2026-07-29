import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

structure MetadataPackage where
  repoName : String
  statementHash : String
  statementLemma : Prop
  proofState : Prop
  proofStateClosed : proofState

structure MetadataEvidence (M : MetadataPackage) where
  proofStateClosed : M.proofStateClosed

def MetadataClosed (M : MetadataPackage) : Prop :=
  M.proofState

theorem metadata_closed_from_evidence (M : MetadataPackage) (E : MetadataEvidence M) :
    MetadataClosed M := by
  exact E.proofStateClosed

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse