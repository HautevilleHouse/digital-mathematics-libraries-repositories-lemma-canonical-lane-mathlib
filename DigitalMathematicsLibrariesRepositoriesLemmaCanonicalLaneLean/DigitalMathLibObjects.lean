import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

structure DigitalMathObject where
  repo : Type
  repoStructure : String
  metadata : Prop
  formalizationStatus : Prop

structure AdmittedDigitalObject where
  object : DigitalMathObject
  lemmaStatement : Prop
  bridgeCondition : Prop
  gateCondition : Prop
  conclusion : lemmaStatement

def WitnessClosed (O : AdmittedDigitalObject) : Prop :=
  O.lemmaStatement

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse