import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

structure CitationPackage where
  doi : String
  authorList : List String
  title : String
  year : Nat
  isCanonical : Prop
  canonicalWitness : isCanonical

structure CitationEvidence (C : CitationPackage) where
  canonicalWitnessClosed : C.canonicalWitness

def CitationClosed (C : CitationPackage) : Prop :=
  C.isCanonical

theorem citation_closed_from_evidence (C : CitationPackage) (E : CitationEvidence C) :
    CitationClosed C := by
  exact E.canonicalWitnessClosed

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse