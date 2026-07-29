import HautevilleHouse.CategoriesFibrationsRelationsKTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure KTheoryPackage where
  category : CategoryObject
  K0Group : Type
  K1Group : Type
  exactSequence : Prop
  additivity : Prop

structure KTheoryEvidence (K : KTheoryPackage) where
  categoryClosed : K.category.categoryStructure
  K0GroupConstructed : K.K0Group
  K1GroupConstructed : K.K1Group
  exactSequenceClosed : K.exactSequence
  additivityClosed : K.additivity

def KTheoryClosed (K : KTheoryPackage) : Prop :=
  K.category.categoryStructure ∧ K.K0Group ∧ K.K1Group ∧ K.exactSequence ∧ K.additivity

theorem ktheory_closed_from_evidence (K : KTheoryPackage) (E : KTheoryEvidence K) : KTheoryClosed K := by
  exact And.intro E.categoryClosed (And.intro E.K0GroupConstructed
    (And.intro E.K1GroupConstructed (And.intro E.exactSequenceClosed E.additivityClosed)))

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse