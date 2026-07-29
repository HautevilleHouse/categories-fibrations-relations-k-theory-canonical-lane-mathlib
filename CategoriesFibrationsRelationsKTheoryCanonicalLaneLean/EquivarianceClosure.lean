import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure EquivariantClosurePackage (K : KTheoryPackage F C) where
  stabilization : Prop
  mapRegularity : Prop
  traceMaps : Prop
  duality : Prop

structure EquivariantClosureEvidence (E : EquivariantClosurePackage K) where
  stabilizationClosed : E.stabilization
  mapRegularityClosed : E.mapRegularity
  traceMapsClosed : E.traceMaps
  dualityClosed : E.duality

def EquivariantClosureClosed (E : EquivariantClosurePackage K) : Prop :=
  E.stabilization ∧ E.mapRegularity ∧ E.traceMaps ∧ E.duality

theorem equivariant_closure_closed_from_evidence
    (E : EquivariantClosurePackage K) (Ev : EquivariantClosureEvidence E) :
    EquivariantClosureClosed E := by
  exact And.intro Ev.stabilizationClosed
    (And.intro Ev.mapRegularityClosed (And.intro Ev.traceMapsClosed Ev.dualityClosed))

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse