import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInclusionsCanonicalLaneLean

structure FunctionalDifferentialInclusionAdmittedObject where
  stateSpace : Type
  timeDomain : Type
  inclusionSet : Type
  solutionExists : Prop
  conclusion : solutionExists

structure FdiInitialValueProblem where
  object : FunctionalDifferentialInclusionAdmittedObject
  initialValueSatisfied : Prop
  viability : Prop

def FdiWitnessClosed (O : FunctionalDifferentialInclusionAdmittedObject) : Prop :=
  O.solutionExists

end FunctionalDifferentialInclusionsCanonicalLaneLean
end HautevilleHouse