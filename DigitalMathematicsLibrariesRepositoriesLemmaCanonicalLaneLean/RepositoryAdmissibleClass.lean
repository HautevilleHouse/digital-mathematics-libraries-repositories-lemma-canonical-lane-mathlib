import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

structure DigitalLibraryObject where
  repoId : String
  theoremStatement : Prop
  closedUnderFormalization : Prop
  carriedGap : Prop
  conclusion : closedUnderFormalization ∨ carriedGap

structure AdmissibleClass where
  object : DigitalLibraryObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse
