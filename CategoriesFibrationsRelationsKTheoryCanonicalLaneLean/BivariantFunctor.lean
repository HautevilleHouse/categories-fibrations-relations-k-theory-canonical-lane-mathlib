import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure BivariantFunctorPackage where
  sourceCategory : Type u
  targetCategory : Type v
  bifunctor : sourceCategory → sourceCategory → targetCategory
  compositionLaw : Prop
  associativity : Prop
  unitAxiom : Prop

structure BivariantFunctorEvidence (B : BivariantFunctorPackage) where
  compositionLawClosed : B.compositionLaw
  associativityClosed : B.associativity
  unitAxiomClosed : B.unitAxiom

def BivariantFunctorClosed (B : BivariantFunctorPackage) : Prop :=
  B.compositionLaw ∧ B.associativity ∧ B.unitAxiom

theorem bivariant_functor_closed_from_evidence (B : BivariantFunctorPackage)
    (E : BivariantFunctorEvidence B) : BivariantFunctorClosed B := by
  exact And.intro E.compositionLawClosed (And.intro E.associativityClosed E.unitAxiomClosed)

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse