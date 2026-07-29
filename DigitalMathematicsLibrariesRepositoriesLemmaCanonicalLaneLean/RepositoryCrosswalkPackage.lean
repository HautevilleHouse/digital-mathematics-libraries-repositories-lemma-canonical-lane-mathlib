import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean.LinkedDataPackage

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

structure RepositoryCrosswalkPackage {L : LinkedDataPackage} (LL : LinkedDataClosed L) where
  oaiPMHRepository : Prop
  sitemapIndex : Prop
  resourceSync : Prop
  orcidIntegration : Prop

structure RepositoryCrosswalkEvidence {L : LinkedDataPackage} {LL : LinkedDataClosed L}
    (R : RepositoryCrosswalkPackage LL) where
  oaiPMHRepositoryClosed : R.oaiPMHRepository
  sitemapIndexClosed : R.sitemapIndex
  resourceSyncClosed : R.resourceSync
  orcidIntegrationClosed : R.orcidIntegration

def RepositoryCrosswalkClosed {L : LinkedDataPackage} {LL : LinkedDataClosed L}
    (R : RepositoryCrosswalkPackage LL) : Prop :=
  R.oaiPMHRepository ∧ R.sitemapIndex ∧ R.resourceSync ∧ R.orcidIntegration

theorem repository_crosswalk_closed_from_evidence {L : LinkedDataPackage} {LL : LinkedDataClosed L}
    (R : RepositoryCrosswalkPackage LL) (E : RepositoryCrosswalkEvidence R) :
    RepositoryCrosswalkClosed R := by
  exact And.intro E.oaiPMHRepositoryClosed (And.intro E.sitemapIndexClosed (And.intro E.resourceSyncClosed E.orcidIntegrationClosed))

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse