import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInclusionsCanonicalLaneLean

structure ExistencePackage where
  initialCondition : Prop
  solutionInterval : Prop
  existenceGuaranteed : Prop
  uniqueness : Prop

structure ExistenceEvidence (E : ExistencePackage) where
  initialConditionClosed : E.initialCondition
  solutionIntervalClosed : E.solutionInterval
  existenceGuaranteedClosed : E.existenceGuaranteed
  uniquenessClosed : E.uniqueness

def ExistenceClosed (E : ExistencePackage) : Prop :=
  E.initialCondition ∧ E.solutionInterval ∧ E.existenceGuaranteed ∧ E.uniqueness

theorem existence_closed_from_evidence
    (E : ExistencePackage) (Ev : ExistenceEvidence E) : ExistenceClosed E := by
  exact And.intro Ev.initialConditionClosed
    (And.intro Ev.solutionIntervalClosed
      (And.intro Ev.existenceGuaranteedClosed Ev.uniquenessClosed))

end FunctionalDifferentialInclusionsCanonicalLaneLean
end HautevilleHouse