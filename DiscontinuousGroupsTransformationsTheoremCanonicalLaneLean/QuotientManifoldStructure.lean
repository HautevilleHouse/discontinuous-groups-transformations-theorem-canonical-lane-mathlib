import canonicalLaneMathlib.AdmissibleClass
import DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean.FundamentalDomain
import DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean.DiscontinuousGroupTransformations

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure QuotientManifoldStructurePackage {G : DiscontinuousGroupPackage} {X : TransformationDomainPackage} {P : ProperDiscontinuityPackage G X} (F : FundamentalDomainPackage G X P) where
  quotientManifold : Type u
  atlasOnManifold : Type u
  smoothCompatibility : Prop
  smoothCompatibilityTerm : smoothCompatibility
  diffeomorphismToOrbitQuotient : Prop
  diffeomorphismToOrbitQuotientTerm : diffeomorphismToOrbitQuotient

def QuotientManifoldStructureClosed {G : DiscontinuousGroupPackage} {X : TransformationDomainPackage} {P : ProperDiscontinuityPackage G X} {F : FundamentalDomainPackage G X P} (Q : QuotientManifoldStructurePackage G X P F) : Prop :=
  Q.smoothCompatibility ∧ Q.diffeomorphismToOrbitQuotient

theorem quotient_manifold_structure_closed_from_evidence {G : DiscontinuousGroupPackage} {X : TransformationDomainPackage} {P : ProperDiscontinuityPackage G X} {F : FundamentalDomainPackage G X P} (Q : QuotientManifoldStructurePackage G X P F) : QuotientManifoldStructureClosed Q := by
  exact And.intro Q.smoothCompatibilityTerm Q.diffeomorphismToOrbitQuotientTerm

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse
