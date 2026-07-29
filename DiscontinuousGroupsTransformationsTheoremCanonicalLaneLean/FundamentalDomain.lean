import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean.DiscontinuousGroupsTransformations

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure FundamentalDomain {G : Type u} {X : Type v} [TopologicalSpace X]
    (D : DiscontinuousGroup G X) where
  domain : Set X
  tilingProperty : Prop
  nullIntersection : Prop
  tilingPropertyTerm : tilingProperty
  nullIntersectionTerm : nullIntersection

structure FundamentalDomainEvidence {G : Type u} {X : Type v} [TopologicalSpace X]
    {D : DiscontinuousGroup G X} (F : FundamentalDomain D) where
  tilingPropertyClosed : F.tilingProperty
  nullIntersectionClosed : F.nullIntersection

def FundamentalDomainClosed {G : Type u} {X : Type v} [TopologicalSpace X]
    {D : DiscontinuousGroup G X} (F : FundamentalDomain D) : Prop :=
  F.tilingProperty ∧ F.nullIntersection

theorem fundamental_domain_closed_from_evidence
    {G : Type u} {X : Type v} [TopologicalSpace X]
    {D : DiscontinuousGroup G X} (F : FundamentalDomain D)
    (E : FundamentalDomainEvidence F) : FundamentalDomainClosed F := by
  exact And.intro E.tilingPropertyClosed E.nullIntersectionClosed

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse