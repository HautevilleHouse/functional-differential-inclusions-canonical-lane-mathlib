import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInclusionsCanonicalLaneLean

/-!
# Differential Inclusion Structure Package
This package defines the foundational structures for functional differential inclusions,
including state spaces, set-valued maps, and solution concepts.
-/

structure StateSpace where
  carrier : Type u
  norm : carrier → ℝ
  innerProduct : carrier → carrier → ℝ
  complete : Prop
  separable : Prop
  completeTerm : complete
  separableTerm : separable

structure CompactInterval where
  start : ℝ
  end_ : ℝ
  nonEmpty : Prop := by
    linarith [start, end_]
  nonEmptyTerm : nonEmpty

structure SetValuedMap (X Y : Type u) where
  graph : X → Set Y
  upperSemicontinuous : Prop
  closedGraph : Prop
  upperSemicontinuousTerm : upperSemicontinuous
  closedGraphTerm : closedGraph

structure DifferentialInclusionSolution (X : StateSpace) (T : CompactInterval) where
  trajectory : T.end_ → X.carrier
  absolutelyContinuous : Prop
  inclusionCondition : Prop
  absolutelyContinuousTerm : absolutelyContinuous
  inclusionConditionTerm : inclusionCondition

def DifferentialInclusionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem differential_inclusion_closure_proof (A : AdmissibleClass) :
    DifferentialInclusionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionalDifferentialInclusionsCanonicalLaneLean
end HautevilleHouse
