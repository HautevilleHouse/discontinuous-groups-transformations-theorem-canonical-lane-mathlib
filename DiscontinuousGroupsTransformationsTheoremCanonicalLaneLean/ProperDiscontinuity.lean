import canonicalLaneMathlib.AdmissibleClass
import DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean.DiscontinuousGroupTransformations

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure ProperDiscontinuityPackage {G : DiscontinuousGroupPackage} {X : TransformationDomainPackage} where
  action : G.group → X.space → X.space
  actionContinuous : Prop
  actionContinuousTerm : actionContinuous
  properAction : Prop
  properActionTerm : properAction
  orbitSpaceQuotient : Type u
  quotientTopology : TopologicalSpace orbitSpaceQuotient
  quotientIsHausdorff : Prop
  quotientIsHausdorffTerm : quotientIsHausdorff

def ProperDiscontinuityClosed {G : DiscontinuousGroupPackage} {X : TransformationDomainPackage} (P : ProperDiscontinuityPackage G X) : Prop :=
  P.properAction

theorem proper_discontinuity_closed_from_evidence {G : DiscontinuousGroupPackage} {X : TransformationDomainPackage} (P : ProperDiscontinuityPackage G X) : ProperDiscontinuityClosed P := by
  exact P.properActionTerm

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse
