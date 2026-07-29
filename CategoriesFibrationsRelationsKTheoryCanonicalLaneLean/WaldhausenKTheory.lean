import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure WaldhausenKTheoryPackage (C : Type u) where
  cofibrations : Set (C → C)
  weakEquivalences : Set (C → C)
  kTheoryGroups : ℕ → Type v
  additivityTheorem : Prop
  approximationLemma : Prop

structure WaldhausenKTheoryEvidence (W : WaldhausenKTheoryPackage C) where
  cofibrationAxiomsClosed : Prop
  weakEquivalenceAxiomsClosed : Prop
  additivityTheoremClosed : W.additivityTheorem
  approximationLemmaClosed : W.approximationLemma

def WaldhausenKTheoryClosed (W : WaldhausenKTheoryPackage C) : Prop :=
  W.additivityTheorem ∧ W.approximationLemma

theorem waldhausen_k_theory_closed_from_evidence
    (W : WaldhausenKTheoryPackage C) (E : WaldhausenKTheoryEvidence W) :
    WaldhausenKTheoryClosed W := by
  exact And.intro E.additivityTheoremClosed E.approximationLemmaClosed

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse