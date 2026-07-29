import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure TopologicalGroupPackage (M : MetricSpacePackage) where
  Group : Type u
  binaryOp : Group → Group → Group
  inverse : Group → Group
  identity : Group
  groupAxioms : Prop
  continuousOp : Prop
  continuousInverse : Prop
  actsOnSpace : Group → M.Space → M.Space

structure TopologicalGroupEvidence {M : MetricSpacePackage}
    (G : TopologicalGroupPackage M) where
  groupAxiomsClosed : G.groupAxioms
  continuousOpClosed : G.continuousOp
  continuousInverseClosed : G.continuousInverse

def TopologicalGroupClosed {M : MetricSpacePackage}
    (G : TopologicalGroupPackage M) : Prop :=
  G.groupAxioms ∧ G.continuousOp ∧ G.continuousInverse

theorem topological_group_closed_from_evidence
    {M : MetricSpacePackage} (G : TopologicalGroupPackage M)
    (E : TopologicalGroupEvidence G) : TopologicalGroupClosed G := by
  exact And.intro E.groupAxiomsClosed
    (And.intro E.continuousOpClosed E.continuousInverseClosed)

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse