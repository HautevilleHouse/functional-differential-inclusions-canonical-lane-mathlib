import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInclusionsCanonicalLaneLean

def ConstrainedFdiClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fdi_endgame (A : AdmissibleClass) :
    ConstrainedFdiClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionalDifferentialInclusionsCanonicalLaneLean
end HautevilleHouse