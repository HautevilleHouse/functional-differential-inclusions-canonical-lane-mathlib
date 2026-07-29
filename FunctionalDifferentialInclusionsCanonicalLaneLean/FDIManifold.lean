import Mathlib.Topology.Basic
import Mathlib.Geometry.Manifold.SmoothManifoldWithCorners

namespace HautevilleHouse
namespace FunctionalDifferentialInclusionsCanonicalLaneLean

structure FDIManifold where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : SmoothManifoldWithCorners (𝓡 3) carrier
  compactWithoutBoundary : Prop
  simplyConnected : Prop
  conclusion : compactWithoutBoundary

def FDIClosed (M : FDIManifold) : Prop :=
  M.compactWithoutBoundary

end FunctionalDifferentialInclusionsCanonicalLaneLean
end HautevilleHouse