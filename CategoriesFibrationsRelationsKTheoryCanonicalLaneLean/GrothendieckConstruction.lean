import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

-- Grothendieck construction package for fibred categories

structure GrothendieckConstructionPackage where
  baseCategory : Type u
  fibreFunctor : Type v
  cartesianMorphisms : Set (Arrow (TotalCategory baseCategory fibreFunctor))
  cleavages : Prop
  pseudoFunctorCondition : Prop
  splitness : Prop

structure GrothendieckConstructionEvidence (G : GrothendieckConstructionPackage) where
  cleavagesClosed : G.cleavages
  pseudoFunctorConditionClosed : G.pseudoFunctorCondition
  splitnessClosed : G.splitness

def GrothendieckConstructionClosed (G : GrothendieckConstructionPackage) : Prop :=
  G.cleavages ∧ G.pseudoFunctorCondition ∧ G.splitness

theorem grothendieck_construction_closed_from_evidence
    (G : GrothendieckConstructionPackage) (E : GrothendieckConstructionEvidence G) :
    GrothendieckConstructionClosed G := by
  exact And.intro E.cleavagesClosed (And.intro E.pseudoFunctorConditionClosed E.splitnessClosed)

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse