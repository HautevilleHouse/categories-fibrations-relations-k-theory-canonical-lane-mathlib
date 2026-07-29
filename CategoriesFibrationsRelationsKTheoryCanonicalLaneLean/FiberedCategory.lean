import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheory

structure FiberedCategory (E B : Type u) (p : E → B) where
  total : E
  base : B
  projection : E → B
  cartesianLift : ∀ {x : E} {f : B → B} (g : B → B), projection x = f (base) → ∃ (y : E), projection y = g (base) ∧ (∀ z, projection z = g (base) → (∃! h : z → y, projection ∘ h = g ∘ f))

structure Cleavage (E B : Type u) (p : E → B) (F : FiberedCategory E B p) where
  choice : ∀ {x : E} {f : B → B} (hf : F.projection x = f (F.base)), {y : E & F.projection y = f (F.base)}

end CategoriesFibrationsRelationsKTheory
end HautevilleHouse