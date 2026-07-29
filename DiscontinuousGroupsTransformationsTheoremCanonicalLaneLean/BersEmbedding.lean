import canonicalLaneMathlib.AdmissibleClass
import DiscontinuousGroupTransformations.TeichmuellerTheory
import DiscontinuousGroupTransformations.KleinianGroupLimitSet

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure BersEmbedding (S : Type u) [TopologicalSpace S] (g : ℕ) where
  sourceTeichmueller : TeichmuellerSpace S g
  target : Set (ℂ → ℂ)
  embedding : TeichmuellerSpace S g → target
  injective : Function.Injective embedding
  holomorphic : ∀ t, ComplexDifferentiable (embedding t)

structure BersSlice (S : Type u) [TopologicalSpace S] (g : ℕ) where
  embedding : BersEmbedding S g
  slice : Set (targetType S)
  parameterization : TeichmuellerSpace S g ≃ slice

structure BersSimultaneousUniformization (S : Type u) [TopologicalSpace S] (g : ℕ) where
  compactRiemannSurface : RiemannSurface S
  quasifuchsianGroup : KleinianGroup S
  simultaneousEmbedding : S × S → ℂ̂
  equivariant : ∀ (z : S) (γ : DiscreteSubgroup (PSL(2, ℂ))), simultaneousEmbedding (γ.action.action z) = γ.action.action (simultaneousEmbedding z)

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse