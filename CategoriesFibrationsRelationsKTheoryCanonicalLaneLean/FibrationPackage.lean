import HautevilleHouse.CategoriesFibrationsRelationsKTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure FibrationPackage where
  baseObject : CategoryObject
  totalObject : CategoryObject
  fibrationMorphism : Prop
  cartesianLift : Prop
  cleavage : Prop

structure FibrationEvidence (F : FibrationPackage) where
  baseObjectClosed : F.baseObject.categoryStructure
  totalObjectClosed : F.totalObject.categoryStructure
  fibrationMorphismClosed : F.fibrationMorphism
  cartesianLiftClosed : F.cartesianLift
  cleavageClosed : F.cleavage

def FibrationClosed (F : FibrationPackage) : Prop :=
  F.baseObject.categoryStructure ∧ F.totalObject.categoryStructure ∧
  F.fibrationMorphism ∧ F.cartesianLift ∧ F.cleavage

theorem fibration_closed_from_evidence (F : FibrationPackage) (E : FibrationEvidence F) : FibrationClosed F := by
  exact And.intro E.baseObjectClosed (And.intro E.totalObjectClosed
    (And.intro E.fibrationMorphismClosed (And.intro E.cartesianLiftClosed E.cleavageClosed)))

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse