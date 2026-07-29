import canonicalLaneMathlib.AdmissibleClass

/-!
# Orbifold Classification Package
-/

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure OrbifoldClassificationPackage {M : MetricSpacePackage}
    {G : TopologicalGroupPackage M} {A : DiscontinuousGroupActionsPackage G} where
  orbifoldStructure : Prop
  holonomyGroup : Prop
  classifyFiniteSubgroups : Prop
  globalCofiniteAction : Prop

structure OrbifoldClassificationEvidence {M : MetricSpacePackage}
    {G : TopologicalGroupPackage M} {A : DiscontinuousGroupActionsPackage G}
    (O : OrbifoldClassificationPackage A) where
  orbifoldStructureClosed : O.orbifoldStructure
  holonomyGroupClosed : O.holonomyGroup
  classifyFiniteSubgroupsClosed : O.classifyFiniteSubgroups
  globalCofiniteActionClosed : O.globalCofiniteAction

def OrbifoldClassificationClosed {M : MetricSpacePackage}
    {G : TopologicalGroupPackage M} {A : DiscontinuousGroupActionsPackage G}
    (O : OrbifoldClassificationPackage A) : Prop :=
  O.orbifoldStructure ∧ O.holonomyGroup ∧
  O.classifyFiniteSubgroups ∧ O.globalCofiniteAction

theorem orbifold_classification_closed_from_evidence
    {M : MetricSpacePackage} {G : TopologicalGroupPackage M}
    {A : DiscontinuousGroupActionsPackage G}
    (O : OrbifoldClassificationPackage A) (E : OrbifoldClassificationEvidence O) :
    OrbifoldClassificationClosed O := by
  exact And.intro E.orbifoldStructureClosed
    (And.intro E.holonomyGroupClosed
      (And.intro E.classifyFiniteSubgroupsClosed E.globalCofiniteActionClosed))

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse