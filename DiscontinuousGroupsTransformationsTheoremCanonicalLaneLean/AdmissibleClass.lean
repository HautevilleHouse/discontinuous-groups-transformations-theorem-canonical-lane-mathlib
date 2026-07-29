import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : DiscontinuousGroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiscontinuousGroupWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse