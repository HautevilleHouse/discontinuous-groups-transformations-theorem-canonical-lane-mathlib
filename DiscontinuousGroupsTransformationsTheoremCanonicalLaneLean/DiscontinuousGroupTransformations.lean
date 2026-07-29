import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean

structure DiscontinuousGroupPackage where
  group : Type u
  groupOperation : group → group → group
  groupInverse : group → group
  identity : group
  groupAxioms : Prop
  groupAxiomsTerm : groupAxioms
  topologyOnGroup : Prop
  topologyOnGroupTerm : topologyOnGroup

structure TransformationDomainPackage where
  space : Type u
  topology : TopologicalSpace space
  metric : Type v
  metricCompatible : Prop
  metricCompatibleTerm : metricCompatible

end DiscontinuousGroupsTransformationsTheoremCanonicalLaneLean
end HautevilleHouse
