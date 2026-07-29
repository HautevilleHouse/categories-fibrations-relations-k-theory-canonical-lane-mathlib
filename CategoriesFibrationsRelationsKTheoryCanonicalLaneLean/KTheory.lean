import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure KTheoryPackage where
  additiveCategory : Type u
  shortExactSequences : Prop
  K0Group : Type v
  K1Group : Type w
  longExactSequence : Prop
  bottPeriodicity : Prop

structure KTheoryEvidence (K : KTheoryPackage) where
  shortExactSequencesClosed : K.shortExactSequences
  longExactSequenceClosed : K.longExactSequence
  bottPeriodicityClosed : K.bottPeriodicity

def KTheoryClosed (K : KTheoryPackage) : Prop :=
  K.shortExactSequences ∧ K.longExactSequence ∧ K.bottPeriodicity

theorem k_theory_closed_from_evidence (K : KTheoryPackage) (E : KTheoryEvidence K) :
    KTheoryClosed K := by
  exact And.intro E.shortExactSequencesClosed (And.intro E.longExactSequenceClosed E.bottPeriodicityClosed)

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse