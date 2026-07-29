import canonicalLaneMathlib.AdmissibleClass
import DiscontinuousGroupTransformations.DiscontinuousGroupTransformations

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure HyperbolicManifold (M : Type u) [TopologicalSpace M] where
  riemannianMetric : RiemannianMetric M
  constantCurvatureMinusOne : SectionalCurvature riemannianMetric = -1
  complete : Complete riemannianMetric
  finiteVolume : FiniteVolume riemannianMetric

structure MostowRigidityTheorem (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] where
  hm : HyperbolicManifold M
  hn : HyperbolicManifold N
  dimensionAtLeastThree : dim M = dim N ∧ dim M ≥ 3
  isomorphismFundamentalGroups : FundamentalGroup M ≅ FundamentalGroup N
  isometryExists : ∃ (f : M → N), Isometry f

structure IsomorphismInducedIsometry (M : Type u) [TopologicalSpace M] (G : Type v) [Group G] where
  hyperbolicManifold : HyperbolicManifold M
  discontinuousGroup : DiscreteSubgroup G
  isomorphismToFundamentalGroup : G ≅ FundamentalGroup m
  isometryFromCover : Cover M → M
  groupActionIsDeckGroup : ∀ g : G, IsDeckTransformation (action g) (cover M)

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse