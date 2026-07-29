import HautevilleHouse.CategoriesFibrationsRelationsKTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure CategoryFibrationPackage where
  baseCategory : Type u
  fiberCategory : Type v
  fibrationFunctor : baseCategory → fiberCategory
  cartesianLift : Prop
  fibrationAxioms : Prop
  cleavage : Prop

structure CategoryFibrationEvidence (P : CategoryFibrationPackage) where
  cartesianLiftClosed : P.cartesianLift
  fibrationAxiomsClosed : P.fibrationAxioms
  cleavageClosed : P.cleavage

def CategoryFibrationClosed (P : CategoryFibrationPackage) : Prop :=
  P.cartesianLift ∧ P.fibrationAxioms ∧ P.cleavage

theorem category_fibration_closed_from_evidence
    (P : CategoryFibrationPackage) (E : CategoryFibrationEvidence P) :
    CategoryFibrationClosed P := by
  exact And.intro E.cartesianLiftClosed
    (And.intro E.fibrationAxiomsClosed E.cleavageClosed)

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse