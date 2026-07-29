import canonicalLaneMathlib.AdmissibleClass

/-!
# Discontinuous Group Actions Package
-/

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure DiscontinuousGroupActionPackage where
  groupType : Type u
  groupMultiplication : groupType → groupType → groupType
  groupIdentity : groupType
  groupInverse : groupType → groupType
  groupLaws : Prop
  space : Type v
  topology : TopologicalSpace space
  action : groupType → space → space
  continuousAction : Prop
  properlyDiscontinuous : Prop
  fixedPointFree : Prop

def DiscontinuousGroupActionClosed (D : DiscontinuousGroupActionPackage) : Prop :=
  D.groupLaws ∧ D.continuousAction ∧ D.properlyDiscontinuous ∧ D.fixedPointFree

structure DiscontinuousGroupActionEvidence (D : DiscontinuousGroupActionPackage) where
  groupLawsClosed : D.groupLaws
  continuousActionClosed : D.continuousAction
  properlyDiscontinuousClosed : D.properlyDiscontinuous
  fixedPointFreeClosed : D.fixedPointFree

theorem discontinuous_group_action_closed_from_evidence
    (D : DiscontinuousGroupActionPackage) (E : DiscontinuousGroupActionEvidence D) :
    DiscontinuousGroupActionClosed D := by
  exact And.intro E.groupLawsClosed
    (And.intro E.continuousActionClosed
      (And.intro E.properlyDiscontinuousClosed E.fixedPointFreeClosed))

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse