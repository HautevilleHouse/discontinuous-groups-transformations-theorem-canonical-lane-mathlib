import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure MetricSpacePackage where
  Space : Type u
  distance : Space → Space → ℝ
  metricAxioms : Prop
  complete : Prop
  proper : Prop
  geodesic : Prop

structure MetricSpaceEvidence (M : MetricSpacePackage) where
  metricAxiomsClosed : M.metricAxioms
  completeClosed : M.complete
  properClosed : M.proper
  geodesicClosed : M.geodesic

def MetricSpaceClosed (M : MetricSpacePackage) : Prop :=
  M.metricAxioms ∧ M.complete ∧ M.proper ∧ M.geodesic

theorem metric_space_closed_from_evidence (M : MetricSpacePackage)
    (E : MetricSpaceEvidence M) : MetricSpaceClosed M := by
  exact And.intro E.metricAxiomsClosed
    (And.intro E.completeClosed (And.intro E.properClosed E.geodesicClosed))

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse