import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean

def bridgeClosed (A : DigitalMathLibAdmissibleObject) : Prop :=
  RepositoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : DigitalMathLibAdmissibleObject) :
    bridgeClosed A := by
  exact A.object.conclusion

end DigitalMathematicsLibrariesRepositoriesLemmaCanonicalLaneLean
end HautevilleHouse