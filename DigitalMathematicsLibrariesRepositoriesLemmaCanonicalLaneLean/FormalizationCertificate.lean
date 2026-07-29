import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean.DependencyCoverage

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

structure FormalizationCertificatePackage {A : AdmissibleClass}
    (D : DependencyCoveragePackage A) where
  sourceRepoChecked : Prop
  buildArtifactValidated : Prop
  formalizationLayerComplete : Prop
  theoremBoundaryOpen : Prop

structure FormalizationCertificateEvidence {A : AdmissibleClass}
    {D : DependencyCoveragePackage A}
    (C : FormalizationCertificatePackage D) where
  sourceRepoCheckedClosed : C.sourceRepoChecked
  buildArtifactValidatedClosed : C.buildArtifactValidated
  formalizationLayerCompleteClosed : C.formalizationLayerComplete
  theoremBoundaryOpenClosed : C.theoremBoundaryOpen

def FormalizationCertificateClosed {A : AdmissibleClass}
    {D : DependencyCoveragePackage A}
    (C : FormalizationCertificatePackage D) : Prop :=
  C.sourceRepoChecked ∧ C.buildArtifactValidated ∧
  C.formalizationLayerComplete ∧ C.theoremBoundaryOpen

theorem formalization_certificate_closed_from_evidence
    {A : AdmissibleClass} {D : DependencyCoveragePackage A}
    (C : FormalizationCertificatePackage D) (E : FormalizationCertificateEvidence C) :
    FormalizationCertificateClosed C := by
  exact And.intro E.sourceRepoCheckedClosed
    (And.intro E.buildArtifactValidatedClosed
      (And.intro E.formalizationLayerCompleteClosed E.theoremBoundaryOpenClosed))

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse
