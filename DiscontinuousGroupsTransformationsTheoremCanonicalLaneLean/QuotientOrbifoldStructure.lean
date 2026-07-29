import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean.DiscontinuousGroupsTransformations

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure QuotientOrbifoldStructure {G : Type u} {X : Type v} [TopologicalSpace X]
    (D : DiscontinuousGroup G X) where
  quotientSpace : TopologicalSpace Type
  quotientMap : X → quotientSpace
  orbifoldChart : Prop
  regularCoveringLift : Prop
  orbifoldChartTerm : orbifoldChart
  regularCoveringLiftTerm : regularCoveringLift

structure QuotientOrbifoldStructureEvidence {G : Type u} {X : Type v} [TopologicalSpace X]
    {D : DiscontinuousGroup G X} (Q : QuotientOrbifoldStructure D) where
  orbifoldChartClosed : Q.orbifoldChart
  regularCoveringLiftClosed : Q.regularCoveringLift

def QuotientOrbifoldStructureClosed {G : Type u} {X : Type v} [TopologicalSpace X]
    {D : DiscontinuousGroup G X} (Q : QuotientOrbifoldStructure D) : Prop :=
  Q.orbifoldChart ∧ Q.regularCoveringLift

theorem quotient_orbifold_structure_closed_from_evidence
    {G : Type u} {X : Type v} [TopologicalSpace X]
    {D : DiscontinuousGroup G X} (Q : QuotientOrbifoldStructure D)
    (E : QuotientOrbifoldStructureEvidence Q) : QuotientOrbifoldStructureClosed Q := by
  exact And.intro E.orbifoldChartClosed E.regularCoveringLiftClosed

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse