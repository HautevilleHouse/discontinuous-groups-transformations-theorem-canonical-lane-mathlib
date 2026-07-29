import canonicalLaneMathlib.AdmissibleClass
import DiscontinuousGroupTransformations.RiemannSurface
import DiscontinuousGroupTransformations.KleinianGroupLimitSet

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure MarkedRiemannSurface (S : Type u) [TopologicalSpace S] (g : ℕ) where
  surface : RiemannSurface S
  genus : ℕ
  marking : FundamentalGroup S ≅ FreeGroup (2 * genus)

structure TeichmuellerSpace (S : Type u) [TopologicalSpace S] (g : ℕ) where
  markedSurfaces : Set (MarkedRiemannSurface S g)
  equivalenceRelation : MarkedRiemannSurface S g → MarkedRiemannSurface S g → Prop
  quotient : Type v
  projection : MarkedRiemannSurface S g → quotient

structure QuasiConformalMapping (S T : Type u) [TopologicalSpace S] [TopologicalSpace T] where
  mapping : S → T
  quasiconformalConstant : ℝ
  distortionBounded : ∀ (γ : Path S), PathLength (mapping ∘ γ) ≤ quasiconformalConstant * PathLength γ
  orientationPreserving : Bool

structure TeichmuellerTheorem (S : Type u) [TopologicalSpace S] (g : ℕ) where
  teichmuellerSpace : TeichmuellerSpace S g
  teichmuellerMapping : QuasiConformalMapping S S
  uniqueMinimalQuasiconformal : ∀ (mapping : QuasiConformalMapping S S), teichmuellerMapping.quasiconformalConstant ≤ mapping.quasiconformalConstant

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse