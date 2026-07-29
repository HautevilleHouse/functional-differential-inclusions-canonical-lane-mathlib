import FunctionalDifferentialInclusionsCanonicalLaneLean.InclusionOperators

namespace HautevilleHouse
namespace FunctionalDifferentialInclusionsCanonicalLaneLean

structure DifferentialInclusionSolutionPackage {O : InclusionOperatorsPackage}
    (P : InclusionOperatorsEvidence O) where
  existenceOnInterval : Prop
  uniquenessUnderConditions : Prop
  continuousDependence : Prop
  extensionCriterion : Prop

structure DifferentialInclusionSolutionEvidence {O : InclusionOperatorsPackage}
    {P : InclusionOperatorsEvidence O}
    (S : DifferentialInclusionSolutionPackage P) where
  existenceOnIntervalClosed : S.existenceOnInterval
  uniquenessUnderConditionsClosed : S.uniquenessUnderConditions
  continuousDependenceClosed : S.continuousDependence
  extensionCriterionClosed : S.extensionCriterion

def DifferentialInclusionSolutionClosed {O : InclusionOperatorsPackage}
    {P : InclusionOperatorsEvidence O}
    (S : DifferentialInclusionSolutionPackage P) : Prop :=
  S.existenceOnInterval ∧ S.uniquenessUnderConditions ∧
  S.continuousDependence ∧ S.extensionCriterion

theorem differential_inclusion_solution_closed_from_evidence
    {O : InclusionOperatorsPackage} {P : InclusionOperatorsEvidence O}
    (S : DifferentialInclusionSolutionPackage P)
    (E : DifferentialInclusionSolutionEvidence S) :
    DifferentialInclusionSolutionClosed S := by
  exact And.intro E.existenceOnIntervalClosed
    (And.intro E.uniquenessUnderConditionsClosed
      (And.intro E.continuousDependenceClosed E.extensionCriterionClosed))

end FunctionalDifferentialInclusionsCanonicalLaneLean
end HautevilleHouse