import FunctionalDifferentialInclusionsCanonicalLaneLean.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FunctionalDifferentialInclusionsCanonicalLaneLean

structure FDISpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FDIAdmittedObject where
  space : FDISpace
  lipschitzSelection : Prop
  upperSemicontinuous : Prop
  existenceOfSolution : Prop
  conclusion : existenceOfSolution

structure FDIEndgameState where
  object : FDIAdmittedObject

def FDIWitnessClosed (O : FDIAdmittedObject) : Prop :=
  O.existenceOfSolution

end FunctionalDifferentialInclusionsCanonicalLaneLean
end HautevilleHouse