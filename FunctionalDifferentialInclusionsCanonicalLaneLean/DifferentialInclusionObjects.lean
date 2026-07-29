import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FunctionalDifferentialInclusionsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DifferentialInclusionSpace where
  timeDomain : Type
  stateSpace : Type
  timeTopology : TopologicalSpace timeDomain
  stateTopology : TopologicalSpace stateSpace

structure DifferentialInclusionAdmittedObject where
  space : DifferentialInclusionSpace
  setValuedMap : Type
  initialCondition : Prop
  solutionSet : Prop
  conclusion : solutionSet

structure InclusionWitnessClosed (O : DifferentialInclusionAdmittedObject) : Prop :=
  O.solutionSet

end FunctionalDifferentialInclusionsCanonicalLaneLean
end HautevilleHouse