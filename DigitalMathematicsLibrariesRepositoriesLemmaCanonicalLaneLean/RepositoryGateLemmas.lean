import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

def gateClosed (A : DigitalMathLibAdmissibleObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : DigitalMathLibAdmissibleObject) :
    gateClosed A := by
  exact A.gateWitness

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse