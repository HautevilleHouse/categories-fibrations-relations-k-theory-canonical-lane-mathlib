import canonicalLaneMathlib.CategoryTheory

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheory

structure FibrationStructure {C D : Type u} [Category.{v} C] [Category.{v} D] (p : C ⥤ D) where
  cartesianLift : ∀ (d : D) (f : a ⟶ d) (c : C), p c = a → ∃ (g : c' ⟶ c), p.map g = f
  fibrationAxiom : ∀ (f : a ⟶ b) (c : C) (h : p c = b), ∃ (g : c' ⟶ c), p.map g = f

def FibrationClosed {C D : Type u} [Category.{v} C] [Category.{v} D] (p : C ⥤ D) (F : FibrationStructure p) : Prop :=
  F.cartesianLift ∧ F.fibrationAxiom

theorem fibration_closed_from_evidence {C D : Type u} [Category.{v} C] [Category.{v} D] (p : C ⥤ D) (F : FibrationStructure p) : FibrationClosed p F :=
  And.intro F.cartesianLift F.fibrationAxiom

end CategoriesFibrationsRelationsKTheory
end HautevilleHouse