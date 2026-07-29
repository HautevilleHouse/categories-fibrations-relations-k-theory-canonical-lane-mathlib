import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesFibrationsRelationsKTheory.FiberedCategory

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheory

structure FibredCategoryEvidence (E B : Type u) (p : E → B) (F : FiberedCategory E B p) where
  cartesianLiftClosed : ∀ {x : E} {f : B → B} (g : B → B), F.projection x = f (F.base) → (∃ (y : E), F.projection y = g (F.base) ∧ (∀ z, F.projection z = g (F.base) → (∃! h : z → y, F.projection ∘ h = g ∘ f)))
  cleavageClosed : Cleavage E B p F

theorem fibred_category_closed (E B : Type u) (p : E → B) (F : FiberedCategory E B p) (E' : FibredCategoryEvidence E B p F) : Prop := by
  exact E'.cartesianLiftClosed

end CategoriesFibrationsRelationsKTheory
end HautevilleHouse