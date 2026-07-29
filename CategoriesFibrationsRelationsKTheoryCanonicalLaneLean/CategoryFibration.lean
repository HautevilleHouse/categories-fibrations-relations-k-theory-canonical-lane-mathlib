import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure CategoryFibrationPackage where
  baseCategory : Type u
  fiberedCategory : Type v
  fibrationFunctor : baseCategory → fiberedCategory → Prop
  cartesianLift : Prop
  cleavage : Prop

structure CategoryFibrationEvidence (C : CategoryFibrationPackage) where
  cartesianLiftClosed : C.cartesianLift
  cleavageClosed : C.cleavage

def CategoryFibrationClosed (C : CategoryFibrationPackage) : Prop :=
  C.cartesianLift ∧ C.cleavage

theorem category_fibration_closed_from_evidence (C : CategoryFibrationPackage)
    (E : CategoryFibrationEvidence C) : CategoryFibrationClosed C := by
  exact And.intro E.cartesianLiftClosed E.cleavageClosed

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse