import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

structure DigitalMathLibAdmittedObject where
  repository : Type u
  repoTopology : TopologicalSpace repository
  linkedDataModel : Prop
  crossWalksValid : Prop
  conclusion : linkedDataModel ∧ crossWalksValid

structure DigitalMathLibAdmissibleClass where
  object : DigitalMathLibAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : DigitalMathLibAdmissibleClass) : Prop :=
  (A.object.linkedDataModel ∧ A.object.crossWalksValid) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse