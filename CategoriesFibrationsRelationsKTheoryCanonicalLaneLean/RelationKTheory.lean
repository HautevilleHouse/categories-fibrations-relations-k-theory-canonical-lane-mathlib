import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure KTheoryPackage (F : FibrationPackage) (C : CategoryFibrationPackage F) where
  relationModule : Type u
  equivalenceRelation : Prop
  groupCompletion : Prop
  plusConstruction : Prop
  bgbResolution : Prop

structure KTheoryEvidence {F : FibrationPackage} {C : CategoryFibrationPackage F} (K : KTheoryPackage F C) where
  equivalenceRelationClosed : K.equivalenceRelation
  groupCompletionClosed : K.groupCompletion
  plusConstructionClosed : K.plusConstruction
  bgbResolutionClosed : K.bgbResolution

def KTheoryClosed {F : FibrationPackage} {C : CategoryFibrationPackage F} (K : KTheoryPackage F C) : Prop :=
  K.equivalenceRelation ∧ K.groupCompletion ∧ K.plusConstruction ∧ K.bgbResolution

theorem k_theory_closed_from_evidence
    {F : FibrationPackage} {C : CategoryFibrationPackage F} (K : KTheoryPackage F C) (E : KTheoryEvidence K) :
    KTheoryClosed K := by
  exact And.intro E.equivalenceRelationClosed
    (And.intro E.groupCompletionClosed
      (And.intro E.plusConstructionClosed E.bgbResolutionClosed))

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse