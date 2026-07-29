import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

structure DependencyGraph where
  nodes : List String
  edges : List (String × String)
  acyclic : Prop
  acyclicWitness : acyclic

structure DependencyEvidence (D : DependencyGraph) where
  acyclicClosed : D.acyclicWitness

def DependencyClosed (D : DependencyGraph) : Prop :=
  D.acyclic

theorem dependency_closed_from_evidence (D : DependencyGraph) (E : DependencyEvidence D) :
    DependencyClosed D := by
  exact E.acyclicClosed

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse