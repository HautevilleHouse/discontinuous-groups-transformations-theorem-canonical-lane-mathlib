import HautevilleHouse.DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean.DiscontinuousGroupStructure

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure DiscontinuousGroupAdmittedObject where
  manifold : Type u
  metric : MetricSpace manifold
  group : DiscontinuousGroupStructure manifold
  coveringMap : Type v
  deckTransformations : Type w
  coveringSpace : manifold → Prop
  goodCovering : Prop
  conclusion : goodCovering

def DiscontinuousGroupWitnessClosed (O : DiscontinuousGroupAdmittedObject) : Prop :=
  O.goodCovering

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse