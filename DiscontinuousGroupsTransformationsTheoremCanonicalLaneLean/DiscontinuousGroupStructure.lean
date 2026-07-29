import HautevilleHouse.DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean.DiscontinuousGroupAdmittedObject

/-!
# Discontinuous Group Structure Package

This package defines the structure of a discontinuous group of isometries acting on a Riemannian manifold.
-/

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure DiscontinuousGroupStructure (M : Type u) [MetricSpace M] where
  group : Type v
  action : group → M → M
  isIsometry : ∀ g : group, Isometry (action g)
  properlyDiscontinuous : Prop
  freeAction : Prop
  cocompact : Prop
  properlyDiscontinuousClosed : properlyDiscontinuous
  freeActionClosed : freeAction
  cocompactClosed : cocompact

structure DiscontinuousGroupEvidence (M : Type u) [MetricSpace M] (D : DiscontinuousGroupStructure M) where
  properlyDiscontinuousClosed : D.properlyDiscontinuous
  freeActionClosed : D.freeAction
  cocompactClosed : D.cocompact

def DiscontinuousGroupClosed (M : Type u) [MetricSpace M] (D : DiscontinuousGroupStructure M) : Prop :=
  D.properlyDiscontinuous ∧ D.freeAction ∧ D.cocompact

theorem discontinuous_group_closed_from_evidence
    (M : Type u) [MetricSpace M] (D : DiscontinuousGroupStructure M)
    (E : DiscontinuousGroupEvidence M D) : DiscontinuousGroupClosed M D := by
  exact And.intro E.properlyDiscontinuousClosed
    (And.intro E.freeActionClosed E.cocompactClosed)

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse