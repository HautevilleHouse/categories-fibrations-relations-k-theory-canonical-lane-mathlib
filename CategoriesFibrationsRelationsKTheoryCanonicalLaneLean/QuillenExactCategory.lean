import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure QuillenExactCategoryPackage (C : Type u) where
  zeroObject : C
  kernel : (C → C) → C
  cokernel : (C → C) → C
  exactnessAxioms : Prop
  admissibleMonomorphisms : Prop
  admissibleEpimorphisms : Prop

structure QuillenExactCategoryEvidence (Q : QuillenExactCategoryPackage C) where
  exactnessAxiomsClosed : Q.exactnessAxioms
  admissibleMonomorphismsClosed : Q.admissibleMonomorphisms
  admissibleEpimorphismsClosed : Q.admissibleEpimorphisms

def QuillenExactCategoryClosed (Q : QuillenExactCategoryPackage C) : Prop :=
  Q.exactnessAxioms ∧ Q.admissibleMonomorphisms ∧ Q.admissibleEpimorphisms

theorem quillen_exact_category_closed_from_evidence
    (Q : QuillenExactCategoryPackage C) (E : QuillenExactCategoryEvidence Q) :
    QuillenExactCategoryClosed Q := by
  exact And.intro E.exactnessAxiomsClosed
    (And.intro E.admissibleMonomorphismsClosed E.admissibleEpimorphismsClosed)

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse