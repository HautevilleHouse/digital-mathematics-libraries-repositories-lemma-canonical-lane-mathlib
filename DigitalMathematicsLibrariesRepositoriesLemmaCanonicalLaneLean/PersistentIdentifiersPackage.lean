import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean.RepositoryCrosswalkPackage

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

structure PersistentIdentifiersPackage {L : LinkedDataPackage} {LL : LinkedDataClosed L}
    {R : RepositoryCrosswalkPackage LL} (RR : RepositoryCrosswalkClosed R) where
  doiRegistration : Prop
  handleSystem : Prop
  arkIdentifier : Prop
  purlResolution : Prop

structure PersistentIdentifiersEvidence {L : LinkedDataPackage} {LL : LinkedDataClosed L}
    {R : RepositoryCrosswalkPackage LL} {RR : RepositoryCrosswalkClosed R}
    (P : PersistentIdentifiersPackage RR) where
  doiRegistrationClosed : P.doiRegistration
  handleSystemClosed : P.handleSystem
  arkIdentifierClosed : P.arkIdentifier
  purlResolutionClosed : P.purlResolution

def PersistentIdentifiersClosed {L : LinkedDataPackage} {LL : LinkedDataClosed L}
    {R : RepositoryCrosswalkPackage LL} {RR : RepositoryCrosswalkClosed R}
    (P : PersistentIdentifiersPackage RR) : Prop :=
  P.doiRegistration ∧ P.handleSystem ∧ P.arkIdentifier ∧ P.purlResolution

theorem persistent_identifiers_closed_from_evidence {L : LinkedDataPackage} {LL : LinkedDataClosed L}
    {R : RepositoryCrosswalkPackage LL} {RR : RepositoryCrosswalkClosed R}
    (P : PersistentIdentifiersPackage RR) (E : PersistentIdentifiersEvidence P) :
    PersistentIdentifiersClosed P := by
  exact And.intro E.doiRegistrationClosed (And.intro E.handleSystemClosed (And.intro E.arkIdentifierClosed E.purlResolutionClosed))

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse