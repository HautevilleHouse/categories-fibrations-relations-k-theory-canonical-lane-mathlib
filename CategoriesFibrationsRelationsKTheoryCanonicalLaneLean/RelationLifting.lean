import HautevilleHouse.CategoriesFibrationsRelationsKTheoryCanonicalLaneLean.KTheoryPackage

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure RelationLiftingPackage where
  relationCategory : Type u
  liftingProperty : Prop
  liftMap : relationCategory → Type v
  coherentLifts : Prop
  homotopyLifting : Prop

structure RelationLiftingEvidence (R : RelationLiftingPackage) where
  liftingPropertyClosed : R.liftingProperty
  coherentLiftsClosed : R.coherentLifts
  homotopyLiftingClosed : R.homotopyLifting

def RelationLiftingClosed (R : RelationLiftingPackage) : Prop :=
  R.liftingProperty ∧ R.coherentLifts ∧ R.homotopyLifting

theorem relation_lifting_closed_from_evidence
    (R : RelationLiftingPackage) (E : RelationLiftingEvidence R) :
    RelationLiftingClosed R := by
  exact And.intro E.liftingPropertyClosed
    (And.intro E.coherentLiftsClosed E.homotopyLiftingClosed)

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse