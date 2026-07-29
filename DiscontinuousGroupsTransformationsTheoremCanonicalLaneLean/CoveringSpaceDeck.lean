import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean.DiscontinuousGroupsTransformations

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure CoveringSpaceDeck {G : Type u} {X : Type v} [TopologicalSpace X]
    (D : DiscontinuousGroup G X) where
  coveringMap : Type w
  deckTransformationGroup : G
  regularCovering : Prop
  galoisCorrespondence : Prop
  regularCoveringTerm : regularCovering
  galoisCorrespondenceTerm : galoisCorrespondence

structure CoveringSpaceDeckEvidence {G : Type u} {X : Type v} [TopologicalSpace X]
    {D : DiscontinuousGroup G X} (C : CoveringSpaceDeck D) where
  regularCoveringClosed : C.regularCovering
  galoisCorrespondenceClosed : C.galoisCorrespondence

def CoveringSpaceDeckClosed {G : Type u} {X : Type v} [TopologicalSpace X]
    {D : DiscontinuousGroup G X} (C : CoveringSpaceDeck D) : Prop :=
  C.regularCovering ∧ C.galoisCorrespondence

theorem covering_space_deck_closed_from_evidence
    {G : Type u} {X : Type v} [TopologicalSpace X]
    {D : DiscontinuousGroup G X} (C : CoveringSpaceDeck D)
    (E : CoveringSpaceDeckEvidence C) : CoveringSpaceDeckClosed C := by
  exact And.intro E.regularCoveringClosed E.galoisCorrespondenceClosed

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse