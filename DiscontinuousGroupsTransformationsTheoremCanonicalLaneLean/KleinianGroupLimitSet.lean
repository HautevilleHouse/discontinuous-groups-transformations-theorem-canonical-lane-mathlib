import canonicalLaneMathlib.AdmissibleClass
import DiscontinuousGroupTransformations.KleinianGroupAction

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure LimitSet {G : Type u} {X : Type v} [Group G] [TopologicalSpace X] (action : DiscontinuousGroupAction G X) where
  carrier : Set X
  accumulationPoints : ∀ x : X, x ∈ carrier ↔ ∃ (g : G) (net : Set G), g ∉ net ∧ Filter.Tendsto (fun h : G => action.action h x) (Filter.principal net) (𝓝 x)
  closed : IsClosed carrier
  invariant : ∀ g : G, action.action g '' carrier = carrier

structure KleinianGroup (Ω : Type u) [TopologicalSpace Ω] where
  domain : Set Ω  -- domain of discontinuity
  action : DiscontinuousGroupAction (DiscreteSubgroup (PSL(2, ℂ))) Ω
  limitSet : LimitSet action
  domainNonEmpty : domain.Nonempty

structure LimitSetDecomposition (K : KleinianGroup) where
  components : Set (Set K.domain)
  connectedComponents : Set.Partition K.domain components
  eachComponentInvariant : ∀ (c : Set K.domain) (g : K.action.group.carrier), c ∈ components → K.action.action g '' c ∈ components
  geometricFiniteness : Prop

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse