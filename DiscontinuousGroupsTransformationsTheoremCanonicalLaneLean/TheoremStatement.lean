import DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceRepository : String := "discontinuous-groups-transformations-theorem-canonical-lane"
def sourceDescription : String := "Discontinuous Groups Transformations Theorem"
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := sourceRepository,
    theoremObject := sourceDescription,
    classicalBoundary := "classical boundary carried",
    manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through bridge and gate",
    certificateLane := baselineCertificateLane,
    carriedRemainder := "carried remainder open"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse