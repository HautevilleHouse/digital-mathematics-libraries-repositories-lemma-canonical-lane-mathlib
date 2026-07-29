import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

structure DependencyCoveragePackage (A : AdmissibleClass) where
  sourceImportsRecorded : Prop
  pathDependenciesResolved : Prop
  transitiveClosureAcyclic : Prop
  leafTheoremsIdentified : Prop

structure DependencyCoverageEvidence {A : AdmissibleClass} (P : DependencyCoveragePackage A) where
  sourceImportsRecordedClosed : P.sourceImportsRecorded
  pathDependenciesResolvedClosed : P.pathDependenciesResolved
  transitiveClosureAcyclicClosed : P.transitiveClosureAcyclic
  leafTheoremsIdentifiedClosed : P.leafTheoremsIdentified

def DependencyCoverageClosed {A : AdmissibleClass} (P : DependencyCoveragePackage A) : Prop :=
  P.sourceImportsRecorded ∧ P.pathDependenciesResolved ∧
  P.transitiveClosureAcyclic ∧ P.leafTheoremsIdentified

theorem dependency_coverage_closed_from_evidence
    {A : AdmissibleClass} (P : DependencyCoveragePackage A)
    (E : DependencyCoverageEvidence P) : DependencyCoverageClosed P := by
  exact And.intro E.sourceImportsRecordedClosed
    (And.intro E.pathDependenciesResolvedClosed
      (And.intro E.transitiveClosureAcyclicClosed E.leafTheoremsIdentifiedClosed))

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse
