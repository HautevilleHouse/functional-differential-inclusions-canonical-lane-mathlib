import FunctionalDifferentialInclusionsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FunctionalDifferentialInclusionsCanonicalLaneLean

structure ConvexValuedPackage where
  convexValues : Prop
  closedValues : Prop
  upperSemicontinuous : Prop
  measurableSelection : Prop
  relaxedInclusion : Prop

structure ConvexValuedEvidence (C : ConvexValuedPackage) where
  convexValuesClosed : C.convexValues
  closedValuesClosed : C.closedValues
  upperSemicontinuousClosed : C.upperSemicontinuous
  measurableSelectionClosed : C.measurableSelection
  relaxedInclusionClosed : C.relaxedInclusion

def ConvexValuedClosed (C : ConvexValuedPackage) : Prop :=
  C.convexValues ∧ C.closedValues ∧ C.upperSemicontinuous ∧ C.measurableSelection ∧ C.relaxedInclusion

theorem convex_valued_closed_from_evidence (C : ConvexValuedPackage) (Ev : ConvexValuedEvidence C) :
    ConvexValuedClosed C := by
  exact And.intro Ev.convexValuesClosed (And.intro Ev.closedValuesClosed (And.intro Ev.upperSemicontinuousClosed (And.intro Ev.measurableSelectionClosed Ev.relaxedInclusionClosed)))

end FunctionalDifferentialInclusionsCanonicalLaneLean
end HautevilleHouse