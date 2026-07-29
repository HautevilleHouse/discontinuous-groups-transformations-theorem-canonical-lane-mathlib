import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

def ConstrainedDiscontinuousGroupsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_discontinuous_groups_endgame (A : AdmissibleClass) :
    ConstrainedDiscontinuousGroupsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse