import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

def ConstrainedDigitalMathLibClosure (A : DigitalMathLibAdmissibleObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_digital_math_lib_endgame (A : DigitalMathLibAdmissibleObject) :
    ConstrainedDigitalMathLibClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse