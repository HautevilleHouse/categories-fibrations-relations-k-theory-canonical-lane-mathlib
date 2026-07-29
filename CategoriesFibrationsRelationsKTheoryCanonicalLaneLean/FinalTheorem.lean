import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

def ConstrainedKTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ktheory_endgame (A : AdmissibleClass) :
    ConstrainedKTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) A.gateWitness

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse