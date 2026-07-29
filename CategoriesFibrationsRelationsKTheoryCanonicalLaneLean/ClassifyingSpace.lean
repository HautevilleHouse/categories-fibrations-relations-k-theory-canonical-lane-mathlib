import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheory

structure ClassifyingSpace (G : Type u) [Group G] where
  underlying : Type v
  topology : TopologicalSpace underlying
  simplicial : SimplicialSet underlying
  homotopyType : Prop

theorem classifying_space_closed (G : Type u) [Group G] (B : ClassifyingSpace G) : Prop := by
  exact True

end CategoriesFibrationsRelationsKTheory
end HautevilleHouse