import FunctionalDifferentialInclusionsCanonicalLaneLean.FinalTheorem
import Mathlib

namespace HautevilleHouse
namespace FunctionalDifferentialInclusionsCanonicalLaneLean

structure FDIAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  inclusionMaps : Prop
  solutionExistence : Prop
  conclusion : solutionExistence

def FDIWitnessClosed (O : FDIAdmittedObject) : Prop :=
  O.solutionExistence

end FunctionalDifferentialInclusionsCanonicalLaneLean
end HautevilleHouse