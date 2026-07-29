import canonicalLaneMathlib.AdmissibleClass

/-!
# Geometric Orbifold Structure Package
-/

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure GeometricOrbifoldStructurePackage where
  orbifold : Type u
  orbifoldTopology : TopologicalSpace orbifold
  chartFamily : Type v
  transitionMaps : Prop
  riemannianMetric : Prop
  metricSmooth : Prop
  singularSet : Set orbifold
  localGroupActions : Prop
  compatibleWithGeodesics : Prop

def GeometricOrbifoldStructureClosed (G : GeometricOrbifoldStructurePackage) : Prop :=
  G.transitionMaps ∧ G.riemannianMetric ∧ G.metricSmooth ∧
  G.localGroupActions ∧ G.compatibleWithGeodesics

structure GeometricOrbifoldStructureEvidence (G : GeometricOrbifoldStructurePackage) where
  transitionMapsClosed : G.transitionMaps
  riemannianMetricClosed : G.riemannianMetric
  metricSmoothClosed : G.metricSmooth
  localGroupActionsClosed : G.localGroupActions
  compatibleWithGeodesicsClosed : G.compatibleWithGeodesics

theorem geometric_orbifold_structure_closed_from_evidence
    (G : GeometricOrbifoldStructurePackage) (E : GeometricOrbifoldStructureEvidence G) :
    GeometricOrbifoldStructureClosed G := by
  exact And.intro E.transitionMapsClosed
    (And.intro E.riemannianMetricClosed
      (And.intro E.metricSmoothClosed
        (And.intro E.localGroupActionsClosed E.compatibleWithGeodesicsClosed)))

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse