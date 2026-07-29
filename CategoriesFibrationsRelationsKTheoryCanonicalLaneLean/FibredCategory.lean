import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure FibredCategoryPackage where
  baseCategory : Type u
  totalCategory : Type v
  projection : totalCategory → baseCategory
  cartesianLifts : Prop
  cleavage : Prop
  fibrationAxioms : Prop

structure FibredCategoryEvidence (F : FibredCategoryPackage) where
  cartesianLiftsClosed : F.cartesianLifts
  cleavageClosed : F.cleavage
  fibrationAxiomsClosed : F.fibrationAxioms

def FibredCategoryClosed (F : FibredCategoryPackage) : Prop :=
  F.cartesianLifts ∧ F.cleavage ∧ F.fibrationAxioms

theorem fibred_category_closed_from_evidence (F : FibredCategoryPackage)
    (E : FibredCategoryEvidence F) : FibredCategoryClosed F := by
  exact And.intro E.cartesianLiftsClosed (And.intro E.cleavageClosed E.fibrationAxiomsClosed)

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse