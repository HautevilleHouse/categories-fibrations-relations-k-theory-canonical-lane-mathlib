import HautevilleHouse.CategoriesFibrationsRelationsKTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure RelationPackage where
  sourceCategory : CategoryObject
  targetCategory : CategoryObject
  profunctorData : Prop
  compositionRule : Prop
  identityLax : Prop

structure RelationEvidence (R : RelationPackage) where
  sourceCategoryClosed : R.sourceCategory.categoryStructure
  targetCategoryClosed : R.targetCategory.categoryStructure
  profunctorDataClosed : R.profunctorData
  compositionRuleClosed : R.compositionRule
  identityLaxClosed : R.identityLax

def RelationClosed (R : RelationPackage) : Prop :=
  R.sourceCategory.categoryStructure ∧ R.targetCategory.categoryStructure ∧
  R.profunctorData ∧ R.compositionRule ∧ R.identityLax

theorem relation_closed_from_evidence (R : RelationPackage) (E : RelationEvidence R) : RelationClosed R := by
  exact And.intro E.sourceCategoryClosed (And.intro E.targetCategoryClosed
    (And.intro E.profunctorDataClosed (And.intro E.compositionRuleClosed E.identityLaxClosed)))

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse