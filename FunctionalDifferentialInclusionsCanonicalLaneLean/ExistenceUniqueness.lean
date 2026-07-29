import FunctionalDifferentialInclusionsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FunctionalDifferentialInclusionsCanonicalLaneLean

structure ExistenceUniquenessPackage where
  existence : Prop
  uniqueness : Prop
  continuousDependence : Prop
  forwardInvariance : Prop
  backwardInvariance : Prop

structure ExistenceUniquenessEvidence (E : ExistenceUniquenessPackage) where
  existenceClosed : E.existence
  uniquenessClosed : E.uniqueness
  continuousDependenceClosed : E.continuousDependence
  forwardInvarianceClosed : E.forwardInvariance
  backwardInvarianceClosed : E.backwardInvariance

def ExistenceUniquenessClosed (E : ExistenceUniquenessPackage) : Prop :=
  E.existence ∧ E.uniqueness ∧ E.continuousDependence ∧ E.forwardInvariance ∧ E.backwardInvariance

theorem existence_uniqueness_closed_from_evidence (E : ExistenceUniquenessPackage) (Ev : ExistenceUniquenessEvidence E) :
    ExistenceUniquenessClosed E := by
  exact And.intro Ev.existenceClosed (And.intro Ev.uniquenessClosed (And.intro Ev.continuousDependenceClosed (And.intro Ev.forwardInvarianceClosed Ev.backwardInvarianceClosed)))

end FunctionalDifferentialInclusionsCanonicalLaneLean
end HautevilleHouse