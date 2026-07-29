import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure RelationStructurePackage where
  sourceCategory : Type u
  targetCategory : Type v
  relations : Type w
  compositionLaw : Prop
  identityLaw : Prop

structure RelationStructureEvidence (R : RelationStructurePackage) where
  compositionLawClosed : R.compositionLaw
  identityLawClosed : R.identityLaw

def RelationStructureClosed (R : RelationStructurePackage) : Prop :=
  R.compositionLaw ∧ R.identityLaw

theorem relation_structure_closed_from_evidence (R : RelationStructurePackage)
    (E : RelationStructureEvidence R) : RelationStructureClosed R := by
  exact And.intro E.compositionLawClosed E.identityLawClosed

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse