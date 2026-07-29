import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure DiscontinuousGroupsAdmittedObject where
  group : Type
  space : Type
  action : group → space → space
  discontinuous : Prop
  classificationResult : Prop
  conclusion : classificationResult

def DiscontinuousGroupsWitnessClosed (O : DiscontinuousGroupsAdmittedObject) : Prop :=
  O.classificationResult

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse