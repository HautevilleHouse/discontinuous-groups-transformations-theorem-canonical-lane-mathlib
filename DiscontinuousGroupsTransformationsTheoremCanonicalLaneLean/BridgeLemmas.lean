import HautevilleHouse.DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiscontinuousGroupWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse