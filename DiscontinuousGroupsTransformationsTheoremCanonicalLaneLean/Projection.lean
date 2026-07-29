import HautevilleHouse.DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean.AdmissibleClass
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DiscontinuousGroupEndgameState where
  object : DiscontinuousGroupAdmittedObject

def discontinuousGroupProjection : Projection DiscontinuousGroupEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem discontinuous_group_projection_idempotent (x : DiscontinuousGroupEndgameState) :
    discontinuousGroupProjection.toFun (discontinuousGroupProjection.toFun x) = discontinuousGroupProjection.toFun x := by
  exact discontinuousGroupProjection.idempotent x

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse