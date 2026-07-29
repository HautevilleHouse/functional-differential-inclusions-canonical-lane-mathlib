import FunctionalDifferentialInclusionsCanonicalLaneLean.DifferentialInclusionSolution

namespace HautevilleHouse
namespace FunctionalDifferentialInclusionsCanonicalLaneLean

structure EvolutionSystemPackage {O : InclusionOperatorsPackage}
    {P : InclusionOperatorsEvidence O}
    {S : DifferentialInclusionSolutionPackage P}
    (E : DifferentialInclusionSolutionEvidence S) where
  semigroupProperty : Prop
  invarianceUnderTranslation : Prop
  attractivity : Prop
  stability : Prop

structure EvolutionSystemEvidence {O : InclusionOperatorsPackage}
    {P : InclusionOperatorsEvidence O}
    {S : DifferentialInclusionSolutionPackage P}
    {E : DifferentialInclusionSolutionEvidence S}
    (Sys : EvolutionSystemPackage E) where
  semigroupPropertyClosed : Sys.semigroupProperty
  invarianceUnderTranslationClosed : Sys.invarianceUnderTranslation
  attractivityClosed : Sys.attractivity
  stabilityClosed : Sys.stability

def EvolutionSystemClosed {O : InclusionOperatorsPackage}
    {P : InclusionOperatorsEvidence O}
    {S : DifferentialInclusionSolutionPackage P}
    {E : DifferentialInclusionSolutionEvidence S}
    (Sys : EvolutionSystemPackage E) : Prop :=
  Sys.semigroupProperty ∧ Sys.invarianceUnderTranslation ∧
  Sys.attractivity ∧ Sys.stability

theorem evolution_system_closed_from_evidence
    {O : InclusionOperatorsPackage} {P : InclusionOperatorsEvidence O}
    {S : DifferentialInclusionSolutionPackage P}
    {E : DifferentialInclusionSolutionEvidence S}
    (Sys : EvolutionSystemPackage E)
    (Ev : EvolutionSystemEvidence Sys) : EvolutionSystemClosed Sys := by
  exact And.intro Ev.semigroupPropertyClosed
    (And.intro Ev.invarianceUnderTranslationClosed
      (And.intro Ev.attractivityClosed Ev.stabilityClosed))

end FunctionalDifferentialInclusionsCanonicalLaneLean
end HautevilleHouse