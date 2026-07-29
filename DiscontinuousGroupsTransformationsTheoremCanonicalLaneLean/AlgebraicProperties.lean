import canonicalLaneMathlib.AdmissibleClass
import DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean.QuotientManifoldStructure

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure AlgebraicPropertiesPackage {G : DiscontinuousGroupPackage} {X : TransformationDomainPackage} {P : ProperDiscontinuityPackage G X} {F : FundamentalDomainPackage G X P} {Q : QuotientManifoldStructurePackage G X P F} where
  groupCohomology : Type u
  cohomologyGroupsComputed : Prop
  cohomologyGroupsComputedTerm : cohomologyGroupsComputed
  vonNeumannAlgebra : Type u
  vonNeumannAlgebraDefined : Prop
  vonNeumannAlgebraDefinedTerm : vonNeumannAlgebraDefined
  dimensionFunction : Prop
  dimensionFunctionTerm : dimensionFunction

def AlgebraicPropertiesClosed {G : DiscontinuousGroupPackage} {X : TransformationDomainPackage} {P : ProperDiscontinuityPackage G X} {F : FundamentalDomainPackage G X P} {Q : QuotientManifoldStructurePackage G X P F} (A : AlgebraicPropertiesPackage G X P F Q) : Prop :=
  A.cohomologyGroupsComputed ∧ A.vonNeumannAlgebraDefined ∧ A.dimensionFunction

theorem algebraic_properties_closed_from_evidence {G : DiscontinuousGroupPackage} {X : TransformationDomainPackage} {P : ProperDiscontinuityPackage G X} {F : FundamentalDomainPackage G X P} {Q : QuotientManifoldStructurePackage G X P F} (A : AlgebraicPropertiesPackage G X P F Q) : AlgebraicPropertiesClosed A := by
  exact And.intro A.cohomologyGroupsComputedTerm (And.intro A.vonNeumannAlgebraDefinedTerm A.dimensionFunctionTerm)

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse
