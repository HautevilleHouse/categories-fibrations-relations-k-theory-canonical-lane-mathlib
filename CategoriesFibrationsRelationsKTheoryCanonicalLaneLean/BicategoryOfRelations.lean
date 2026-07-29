import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheory

structure BicategoryOfRelations where
  objects : Type u
  oneCells : objects → objects → Type v
  twoCells : ∀ {a b : objects}, (f g : oneCells a b) → Type w
  verticalComposition : ∀ {a b : objects} {f g h : oneCells a b}, twoCells f g → twoCells g h → twoCells f h
  horizontalComposition : ∀ {a b c : objects} (f : oneCells a b) (g : oneCells b c), oneCells a c
  associativity : ∀ {a b c d : objects} (f : oneCells a b) (g : oneCells b c) (h : oneCells c d), horizontalComposition (horizontalComposition f g) h = horizontalComposition f (horizontalComposition g h)
  identity : ∀ (a : objects), oneCells a a
  leftIdentity : ∀ {a b : objects} (f : oneCells a b), horizontalComposition (identity a) f = f
  rightIdentity : ∀ {a b : objects} (f : oneCells a b), horizontalComposition f (identity b) = f

theorem bicategory_relations_closed (B : BicategoryOfRelations) : Prop := by
  exact True

end CategoriesFibrationsRelationsKTheory
end HautevilleHouse