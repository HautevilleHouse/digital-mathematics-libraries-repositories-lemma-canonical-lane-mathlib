import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

structure ReviewerBridgePackage where
  reviewerFilesCount : Nat
  chainStepsCount : Nat
  closureGatesCount : Nat
  falsificationConditionCount : Nat
  manifestEntriesCount : Nat
  allGatesPass : Bool
  outsideConstantDependencyCount : Nat

structure ReviewerBridgeEvidence (R : ReviewerBridgePackage) where
  reviewerFilesCountClosed : R.reviewerFilesCount = 9
  chainStepsCountClosed : R.chainStepsCount = 6
  closureGatesCountClosed : R.closureGatesCount = 7
  falsificationConditionCountClosed : R.falsificationConditionCount = 5
  manifestEntriesCountClosed : R.manifestEntriesCount = 25
  allGatesPassClosed : R.allGatesPass
  outsideConstantDependencyCountClosed : R.outsideConstantDependencyCount = 0

def ReviewerBridgeClosed (R : ReviewerBridgePackage) : Prop :=
  R.reviewerFilesCount = 9 ∧
  R.chainStepsCount = 6 ∧
  R.closureGatesCount = 7 ∧
  R.falsificationConditionCount = 5 ∧
  R.manifestEntriesCount = 25 ∧
  R.allGatesPass ∧
  R.outsideConstantDependencyCount = 0

theorem reviewer_bridge_closed_from_evidence (R : ReviewerBridgePackage) (E : ReviewerBridgeEvidence R) : ReviewerBridgeClosed R :=
  And.intro E.reviewerFilesCountClosed (
    And.intro E.chainStepsCountClosed (
      And.intro E.closureGatesCountClosed (
        And.intro E.falsificationConditionCountClosed (
          And.intro E.manifestEntriesCountClosed (
            And.intro E.allGatesPassClosed E.outsideConstantDependencyCountClosed)))))

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse