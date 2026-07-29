import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure RelationCategoryPackage where
  objects : Type u
  arrows : objects → objects → Type v
  composition : ∀ {A B C : objects}, arrows B C → arrows A B → arrows A C
  identity : ∀ A : objects, arrows A A
  relationStructure : Prop
  associativity : Prop
  identityLaws : Prop

structure RelationCategoryEvidence (R : RelationCategoryPackage) where
  relationStructureClosed : R.relationStructure
  associativityClosed : R.associativity
  identityLawsClosed : R.identityLaws

def RelationCategoryClosed (R : RelationCategoryPackage) : Prop :=
  R.relationStructure ∧ R.associativity ∧ R.identityLaws

theorem relation_category_closed_from_evidence (R : RelationCategoryPackage)
    (E : RelationCategoryEvidence R) : RelationCategoryClosed R := by
  exact And.intro E.relationStructureClosed (And.intro E.associativityClosed E.identityLawsClosed)

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse