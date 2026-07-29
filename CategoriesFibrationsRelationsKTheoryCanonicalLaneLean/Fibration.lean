import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheory

structure Fibration (E B : Type u) (p : E → B) [Category E] [Category B] where
  fibered : FiberedCategory E B p
  cartesianLiftFunctorial : Prop
  functorialLiftClosed : cartesianLiftFunctorial

theorem fibration_from_fibered (E B : Type u) (p : E → B) [Category E] [Category B] (F : FiberedCategory E B p) (h : F.cartesianLift) : Fibration E B p := by
  refine { fibered := F, cartesianLiftFunctorial := ?_, functorialLiftClosed := ?_ }
  · exact h
  · exact h

end CategoriesFibrationsRelationsKTheory
end HautevilleHouse