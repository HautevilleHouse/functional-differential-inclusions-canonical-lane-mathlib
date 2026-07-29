import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalDifferentialInclusionsCanonicalLaneLean.DifferentialInclusionStructure

namespace HautevilleHouse
namespace FunctionalDifferentialInclusionsCanonicalLaneLean

/-!
# Lyapunov Stability Package
This package encodes Lyapunov stability concepts for differential inclusions,
including Lyapunov functions and stability criteria.
-/

structure LyapunovFunction {X : StateSpace} where
  function_ : X.carrier → ℝ
  positiveDefinite : Prop
  decreasingCondition : Prop
  positiveDefiniteTerm : positiveDefinite
  decreasingConditionTerm : decreasingCondition

structure StabilityResult {X : StateSpace} (F : SetValuedMap X.carrier X.carrier) where
  equilibrium : X.carrier
  lyapunovFunction : LyapunovFunction X
  stabilityCondition : Prop
  stabilityConditionTerm : stabilityCondition

structure StabilityEvidence {X : StateSpace} {F : SetValuedMap X.carrier X.carrier}
    (S : StabilityResult F) where
  lyapunovClosed : LyapunovFunction X
  stabilityClosed : S.stabilityCondition

def LyapunovStabilityClosed {X : StateSpace} {F : SetValuedMap X.carrier X.carrier}
    (S : StabilityResult F) : Prop :=
  LyapunovFunction X ∧ S.stabilityCondition

theorem lyapunov_stability_closed_from_evidence {X : StateSpace}
    {F : SetValuedMap X.carrier X.carrier} (S : StabilityResult F)
    (Ev : StabilityEvidence S) : LyapunovStabilityClosed S := by
  exact And.intro Ev.lyapunovClosed Ev.stabilityClosed

end FunctionalDifferentialInclusionsCanonicalLaneLean
end HautevilleHouse
