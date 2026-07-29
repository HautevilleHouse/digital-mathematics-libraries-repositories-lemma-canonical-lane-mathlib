import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean.PersistentIdentifiersPackage

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

structure VersioningAndPreservationPackage {L : LinkedDataPackage} {LL : LinkedDataClosed L}
    {R : RepositoryCrosswalkPackage LL} {RR : RepositoryCrosswalkClosed R}
    {P : PersistentIdentifiersPackage RR} (PP : PersistentIdentifiersClosed P) where
  semverTags : Prop
  checksumManifest : Prop
  fixityCheck : Prop
  versionedContentNegotiation : Prop

structure VersioningAndPreservationEvidence {L : LinkedDataPackage} {LL : LinkedDataClosed L}
    {R : RepositoryCrosswalkPackage LL} {RR : RepositoryCrosswalkClosed R}
    {P : PersistentIdentifiersPackage RR} {PP : PersistentIdentifiersClosed P}
    (V : VersioningAndPreservationPackage PP) where
  semverTagsClosed : V.semverTags
  checksumManifestClosed : V.checksumManifest
  fixityCheckClosed : V.fixityCheck
  versionedContentNegotiationClosed : V.versionedContentNegotiation

def VersioningAndPreservationClosed {L : LinkedDataPackage} {LL : LinkedDataClosed L}
    {R : RepositoryCrosswalkPackage LL} {RR : RepositoryCrosswalkClosed R}
    {P : PersistentIdentifiersPackage RR} {PP : PersistentIdentifiersClosed P}
    (V : VersioningAndPreservationPackage PP) : Prop :=
  V.semverTags ∧ V.checksumManifest ∧ V.fixityCheck ∧ V.versionedContentNegotiation

theorem versioning_and_preservation_closed_from_evidence {L : LinkedDataPackage} {LL : LinkedDataClosed L}
    {R : RepositoryCrosswalkPackage LL} {RR : RepositoryCrosswalkClosed R}
    {P : PersistentIdentifiersPackage RR} {PP : PersistentIdentifiersClosed P}
    (V : VersioningAndPreservationPackage PP) (E : VersioningAndPreservationEvidence V) :
    VersioningAndPreservationClosed V := by
  exact And.intro E.semverTagsClosed (And.intro E.checksumManifestClosed (And.intro E.fixityCheckClosed E.versionedContentNegotiationClosed))

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse