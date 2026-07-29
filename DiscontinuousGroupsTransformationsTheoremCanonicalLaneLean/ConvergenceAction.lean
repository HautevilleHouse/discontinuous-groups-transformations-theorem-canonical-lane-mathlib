import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean.DiscontinuousGroupsTransformations

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure ConvergenceAction {G : Type u} {X : Type v} [TopologicalSpace X]
    (D : DiscontinuousGroup G X) where
  convergenceProperty : Prop
  discreteOrbits : Prop
  limitSetStructure : Prop
  convergencePropertyTerm : convergenceProperty
  discreteOrbitsTerm : discreteOrbits
  limitSetStructureTerm : limitSetStructure

structure ConvergenceActionEvidence {G : Type u} {X : Type v} [TopologicalSpace X]
    {D : DiscontinuousGroup G X} (C : ConvergenceAction D) where
  convergencePropertyClosed : C.convergenceProperty
  discreteOrbitsClosed : C.discreteOrbits
  limitSetStructureClosed : C.limitSetStructure

def ConvergenceActionClosed {G : Type u} {X : Type v} [TopologicalSpace X]
    {D : DiscontinuousGroup G X} (C : ConvergenceAction D) : Prop :=
  C.convergenceProperty ∧ C.discreteOrbits ∧ C.limitSetStructure

theorem convergence_action_closed_from_evidence
    {G : Type u} {X : Type v} [TopologicalSpace X]
    {D : DiscontinuousGroup G X} (C : ConvergenceAction D)
    (E : ConvergenceActionEvidence C) : ConvergenceActionClosed C := by
  exact And.intro E.convergencePropertyClosed
    (And.intro E.discreteOrbitsClosed E.limitSetStructureClosed)

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse