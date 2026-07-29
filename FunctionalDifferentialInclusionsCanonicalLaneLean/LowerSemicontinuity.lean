import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInclusionsCanonicalLaneLean

structure LowerSemicontinuousPackage where
  setValuedMap : Type
  lscCondition : Prop
  measurableSelection : Prop

structure LowerSemicontinuousEvidence (L : LowerSemicontinuousPackage) where
  lscConditionClosed : L.lscCondition
  measurableSelectionClosed : L.measurableSelection

def LowerSemicontinuousClosed (L : LowerSemicontinuousPackage) : Prop :=
  L.lscCondition ∧ L.measurableSelection

theorem lower_semicontinuous_closed_from_evidence
    (L : LowerSemicontinuousPackage) (E : LowerSemicontinuousEvidence L) :
    LowerSemicontinuousClosed L := by
  exact And.intro E.lscConditionClosed E.measurableSelectionClosed

end FunctionalDifferentialInclusionsCanonicalLaneLean
end HautevilleHouse