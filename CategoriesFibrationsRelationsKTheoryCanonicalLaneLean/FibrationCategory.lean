import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure FibrationCategoryPackage where
  base : Type u
  fibers : base → Type v
  cartesianLifts : Prop
  cleavage : Prop
  fibrationAxioms : Prop

structure FibrationCategoryEvidence (F : FibrationCategoryPackage) where
  cartesianLiftsClosed : F.cartesianLifts
  cleavageClosed : F.cleavage
  fibrationAxiomsClosed : F.fibrationAxioms

def FibrationCategoryClosed (F : FibrationCategoryPackage) : Prop :=
  F.cartesianLifts ∧ F.cleavage ∧ F.fibrationAxioms

theorem fibration_category_closed_from_evidence (F : FibrationCategoryPackage)
    (E : FibrationCategoryEvidence F) : FibrationCategoryClosed F := by
  exact And.intro E.cartesianLiftsClosed (And.intro E.cleavageClosed E.fibrationAxiomsClosed)

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse