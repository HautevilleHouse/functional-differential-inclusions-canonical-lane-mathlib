import canonicalLaneMathlib.FDIManifold

namespace HautevilleHouse
namespace FunctionalDifferentialInclusionsCanonicalLaneLean

structure FDIStructurePackage (M : FDIManifold) where
  inclusionRelation : Type
  tangentBundle : Type
  differentialOperator : Type
  integralManifold : Prop
  persistence : Prop
  integralManifoldClosed : integralManifold
  persistenceClosed : persistence

structure FDIStructureEvidence {M : FDIManifold} (P : FDIStructurePackage M) where
  integralManifoldClosed : P.integralManifold
  persistenceClosed : P.persistence

def FDIStructureClosed {M : FDIManifold} (P : FDIStructurePackage M) : Prop :=
  P.integralManifold ∧ P.persistence

theorem fdi_structure_closed_from_evidence
    {M : FDIManifold} (P : FDIStructurePackage M) (E : FDIStructureEvidence P) :
    FDIStructureClosed P := by
  exact And.intro E.integralManifoldClosed E.persistenceClosed

end FunctionalDifferentialInclusionsCanonicalLaneLean
end HautevilleHouse