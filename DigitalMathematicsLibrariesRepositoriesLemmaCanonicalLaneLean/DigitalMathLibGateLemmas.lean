import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

def gateClosed (A : DigitalMathLibAdmissibleClass) : Prop :=
  A.object.formalizationBoundary ∨ A.object.repositoryMetadata

theorem gate_from_admissible_class (A : DigitalMathLibAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse
