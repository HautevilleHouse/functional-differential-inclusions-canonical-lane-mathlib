import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInclusionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FdiWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FunctionalDifferentialInclusionsCanonicalLaneLean
end HautevilleHouse