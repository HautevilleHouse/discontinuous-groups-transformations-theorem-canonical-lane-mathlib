import canonicalLaneMathlib.AdmissibleClass

/-!
# Orbifold Covering Package
-/

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure OrbifoldCoveringPackage where
  universalCover : Type u
  universalCoverTopology : TopologicalSpace universalCover
  coveringMap : universalCover → space
  deckGroup : Type v
  deckGroupMultiplication : deckGroup → deckGroup → deckGroup
  deckGroupIdentity : deckGroup
  deckGroupInverse : deckGroup → deckGroup
  deckGroupLaws : Prop
  deckAction : deckGroup → universalCover → universalCover
  properlyDiscontinuousDeckAction : Prop
  coveringMapContinuous : Prop
  coveringMapSurjective : Prop
  locallyHomeomorphic : Prop

def OrbifoldCoveringClosed (O : OrbifoldCoveringPackage) : Prop :=
  O.deckGroupLaws ∧ O.properlyDiscontinuousDeckAction ∧ O.coveringMapContinuous ∧
  O.coveringMapSurjective ∧ O.locallyHomeomorphic

structure OrbifoldCoveringEvidence (O : OrbifoldCoveringPackage) where
  deckGroupLawsClosed : O.deckGroupLaws
  properlyDiscontinuousDeckActionClosed : O.properlyDiscontinuousDeckAction
  coveringMapContinuousClosed : O.coveringMapContinuous
  coveringMapSurjectiveClosed : O.coveringMapSurjective
  locallyHomeomorphicClosed : O.locallyHomeomorphic

theorem orbifold_covering_closed_from_evidence
    (O : OrbifoldCoveringPackage) (E : OrbifoldCoveringEvidence O) :
    OrbifoldCoveringClosed O := by
  exact And.intro E.deckGroupLawsClosed
    (And.intro E.properlyDiscontinuousDeckActionClosed
      (And.intro E.coveringMapContinuousClosed
        (And.intro E.coveringMapSurjectiveClosed E.locallyHomeomorphicClosed)))

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse