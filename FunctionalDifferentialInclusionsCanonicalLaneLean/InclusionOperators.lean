import FunctionalDifferentialInclusionsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FunctionalDifferentialInclusionsCanonicalLaneLean

structure InclusionOperatorsPackage where
  upperSemicontinuity : Prop
  lipschitzSelection : Prop
  existenceTheorem : Prop
  compactnessResult : Prop
  monotonicity : Prop

structure InclusionOperatorsEvidence (P : InclusionOperatorsPackage) where
  upperSemicontinuityClosed : P.upperSemicontinuity
  lipschitzSelectionClosed : P.lipschitzSelection
  existenceTheoremClosed : P.existenceTheorem
  compactnessResultClosed : P.compactnessResult
  monotonicityClosed : P.monotonicity

def InclusionOperatorsClosed (P : InclusionOperatorsPackage) : Prop :=
  P.upperSemicontinuity ∧ P.lipschitzSelection ∧
  P.existenceTheorem ∧ P.compactnessResult ∧ P.monotonicity

theorem inclusion_operators_closed_from_evidence (P : InclusionOperatorsPackage)
    (E : InclusionOperatorsEvidence P) : InclusionOperatorsClosed P := by
  exact And.intro E.upperSemicontinuityClosed
    (And.intro E.lipschitzSelectionClosed
      (And.intro E.existenceTheoremClosed
        (And.intro E.compactnessResultClosed E.monotonicityClosed)))

end FunctionalDifferentialInclusionsCanonicalLaneLean
end HautevilleHouse