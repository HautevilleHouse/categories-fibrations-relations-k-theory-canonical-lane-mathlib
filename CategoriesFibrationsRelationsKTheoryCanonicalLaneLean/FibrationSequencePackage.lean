import canonicalLaneMathlib.AdmissibleClass
import CategoriesFibrationsRelationsKTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure FibrationSequencePackage where
  fibration : Type u
  baseSpace : Type v
  fiber : Type w
  longExactSequence : Prop
  connectingMap : Prop
  weakEquivalenceInducesIsomorphism : Prop

structure FibrationSequenceEvidence (F : FibrationSequencePackage) where
  longExactSequenceClosed : F.longExactSequence
  connectingMapClosed : F.connectingMap
  weakEquivalenceInducesIsomorphismClosed : F.weakEquivalenceInducesIsomorphism

def FibrationSequenceClosed (F : FibrationSequencePackage) : Prop :=
  F.longExactSequence ∧ F.connectingMap ∧ F.weakEquivalenceInducesIsomorphism

theorem fibration_sequence_closed_from_evidence (F : FibrationSequencePackage) (E : FibrationSequenceEvidence F) :
    FibrationSequenceClosed F := by
  exact And.intro E.longExactSequenceClosed
    (And.intro E.connectingMapClosed E.weakEquivalenceInducesIsomorphismClosed)

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse