import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure DiscontinuousGroup (G : Type u) (X : Type v) [TopologicalSpace X] where
  groupStructure : Group G
  action : G → X → X
  properlyDiscontinuous : Prop
  fixedPointFree : Prop
  properlyDiscontinuousTerm : properlyDiscontinuous
  fixedPointFreeTerm : fixedPointFree

structure DiscontinuousGroupEvidence {G : Type u} {X : Type v} [TopologicalSpace X]
    (D : DiscontinuousGroup G X) where
  properlyDiscontinuousClosed : D.properlyDiscontinuous
  fixedPointFreeClosed : D.fixedPointFree

def DiscontinuousGroupClosed {G : Type u} {X : Type v} [TopologicalSpace X]
    (D : DiscontinuousGroup G X) : Prop :=
  D.properlyDiscontinuous ∧ D.fixedPointFree

theorem discontinuous_group_closed_from_evidence
    {G : Type u} {X : Type v} [TopologicalSpace X]
    (D : DiscontinuousGroup G X) (E : DiscontinuousGroupEvidence D) :
    DiscontinuousGroupClosed D := by
  exact And.intro E.properlyDiscontinuousClosed E.fixedPointFreeClosed

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse