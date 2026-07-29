import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

structure DigitalMathLibAdmittedObject where
  libraryName : String
  repositoryMetadata : Prop
  formalizationBoundary : Prop

structure DigitalMathLibAdmissibleClass extends AdmissibleClass where
  object : DigitalMathLibAdmittedObject
  bridgeWitness : repositoryMetadata
  gateWitness : formalizationBoundary ∨ object.repositoryMetadata

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse
