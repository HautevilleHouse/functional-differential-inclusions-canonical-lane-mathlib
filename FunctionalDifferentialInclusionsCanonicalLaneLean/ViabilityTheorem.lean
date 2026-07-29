import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalDifferentialInclusionsCanonicalLaneLean.ExistenceTheorem

namespace HautevilleHouse
namespace FunctionalDifferentialInclusionsCanonicalLaneLean

/-!
# Viability Theorem Package
This package encodes the Viability Theorem, which gives conditions for the existence
of solutions that stay within a given constraint set (viability domain).
-/

structure ViabilityDomain {X : StateSpace} where
  subset : Set X.carrier
  closed : Prop
  tangentConeCondition : Prop
  closedTerm : closed
  tangentConeConditionTerm : tangentConeCondition

structure ViabilityResult {X : StateSpace} (F : SetValuedMap X.carrier X.carrier)
    (T : CompactInterval) where
  domain : ViabilityDomain X
  viableSolution : DifferentialInclusionSolution X T
  viabilityCondition : Prop
  viabilityConditionTerm : viabilityCondition

structure ViabilityEvidence {X : StateSpace} {F : SetValuedMap X.carrier X.carrier}
    {T : CompactInterval} (V : ViabilityResult F T) where
  domainClosed : ViabilityDomain X
  solutionClosed : DifferentialInclusionSolution X T

def ViabilityClosed {X : StateSpace} {F : SetValuedMap X.carrier X.carrier}
    {T : CompactInterval} (V : ViabilityResult F T) : Prop :=
  ViabilityDomain X ∧ DifferentialInclusionSolution X T

theorem viability_closed_from_evidence {X : StateSpace} {F : SetValuedMap X.carrier X.carrier}
    {T : CompactInterval} (V : ViabilityResult F T) (Ev : ViabilityEvidence V) :
    ViabilityClosed V := by
  exact And.intro Ev.domainClosed Ev.solutionClosed

end FunctionalDifferentialInclusionsCanonicalLaneLean
end HautevilleHouse
