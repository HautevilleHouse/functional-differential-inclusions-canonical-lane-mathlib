import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInclusionsCanonicalLaneLean

structure RelaxationPackage where
  convexHullInclusion : Prop
  relaxedSolutionExists : Prop
  closureOfSolutionSet : Prop

structure RelaxationEvidence (R : RelaxationPackage) where
  convexHullInclusionClosed : R.convexHullInclusion
  relaxedSolutionExistsClosed : R.relaxedSolutionExists
  closureOfSolutionSetClosed : R.closureOfSolutionSet

def RelaxationClosed (R : RelaxationPackage) : Prop :=
  R.convexHullInclusion ∧ R.relaxedSolutionExists ∧ R.closureOfSolutionSet

theorem relaxation_closed_from_evidence
    (R : RelaxationPackage) (E : RelaxationEvidence R) : RelaxationClosed R := by
  exact And.intro E.convexHullInclusionClosed
    (And.intro E.relaxedSolutionExistsClosed E.closureOfSolutionSetClosed)

end FunctionalDifferentialInclusionsCanonicalLaneLean
end HautevilleHouse