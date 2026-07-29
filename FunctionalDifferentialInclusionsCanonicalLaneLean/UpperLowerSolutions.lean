import FunctionalDifferentialInclusionsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FunctionalDifferentialInclusionsCanonicalLaneLean

structure UpperLowerSolutionsPackage where
  upperSolution : Prop
  lowerSolution : Prop
  subsolutionProperty : Prop
  supersolutionProperty : Prop
  comparisonPrinciple : Prop

structure UpperLowerSolutionsEvidence (U : UpperLowerSolutionsPackage) where
  upperSolutionClosed : U.upperSolution
  lowerSolutionClosed : U.lowerSolution
  subsolutionPropertyClosed : U.subsolutionProperty
  supersolutionPropertyClosed : U.supersolutionProperty
  comparisonPrincipleClosed : U.comparisonPrinciple

def UpperLowerSolutionsClosed (U : UpperLowerSolutionsPackage) : Prop :=
  U.upperSolution ∧ U.lowerSolution ∧ U.subsolutionProperty ∧ U.supersolutionProperty ∧ U.comparisonPrinciple

theorem upper_lower_solutions_closed_from_evidence (U : UpperLowerSolutionsPackage) (Ev : UpperLowerSolutionsEvidence U) :
    UpperLowerSolutionsClosed U := by
  exact And.intro Ev.upperSolutionClosed (And.intro Ev.lowerSolutionClosed (And.intro Ev.subsolutionPropertyClosed (And.intro Ev.supersolutionPropertyClosed Ev.comparisonPrincipleClosed)))

end FunctionalDifferentialInclusionsCanonicalLaneLean
end HautevilleHouse