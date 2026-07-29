import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure CategoryOfCorrespondencesPackage where
  objects : Type u
  morphisms : objects → objects → Type v
  composition : ∀ {A B C : objects}, morphisms A B → morphisms B C → morphisms A C
  identity : ∀ {A : objects}, morphisms A A
  associativityLaw : Prop
  identityLaw : Prop

structure CategoryOfCorrespondencesEvidence (C : CategoryOfCorrespondencesPackage) where
  associativityLawClosed : C.associativityLaw
  identityLawClosed : C.identityLaw

def CategoryOfCorrespondencesClosed (C : CategoryOfCorrespondencesPackage) : Prop :=
  C.associativityLaw ∧ C.identityLaw

theorem category_of_correspondences_closed_from_evidence (C : CategoryOfCorrespondencesPackage)
    (E : CategoryOfCorrespondencesEvidence C) : CategoryOfCorrespondencesClosed C := by
  exact And.intro E.associativityLawClosed E.identityLawClosed

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse