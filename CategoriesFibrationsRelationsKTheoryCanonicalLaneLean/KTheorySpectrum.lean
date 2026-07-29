import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure KTheorySpectrumPackage where
  connective : Bool
  spaceSequence : ℕ → Type u
  loopStructure : Prop
  additivity : Prop
  periodicity : Prop

structure KTheorySpectrumEvidence (K : KTheorySpectrumPackage) where
  loopStructureClosed : K.loopStructure
  additivityClosed : K.additivity
  periodicityClosed : K.periodicity

def KTheorySpectrumClosed (K : KTheorySpectrumPackage) : Prop :=
  K.loopStructure ∧ K.additivity ∧ K.periodicity

theorem ktheory_spectrum_closed_from_evidence (K : KTheorySpectrumPackage)
    (E : KTheorySpectrumEvidence K) : KTheorySpectrumClosed K := by
  exact And.intro E.loopStructureClosed (And.intro E.additivityClosed E.periodicityClosed)

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse