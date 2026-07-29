import canonicalLaneMathlib.AdmissibleClass
import CategoriesFibrationsRelationsKTheoryCanonicalLaneLean.KKCategoryPackage

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure BottPeriodicityPackage {K : KKCategoryPackage} where
  bottMap : Prop
  bottMapInverse : Prop
  sixTermExactSequence : Prop
  periodicityDegreeTwo : Prop

structure BottPeriodicityEvidence {K : KKCategoryPackage} (B : BottPeriodicityPackage K) where
  bottMapClosed : B.bottMap
  bottMapInverseClosed : B.bottMapInverse
  sixTermExactSequenceClosed : B.sixTermExactSequence
  periodicityDegreeTwoClosed : B.periodicityDegreeTwo

def BottPeriodicityClosed {K : KKCategoryPackage} (B : BottPeriodicityPackage K) : Prop :=
  B.bottMap ∧ B.bottMapInverse ∧ B.sixTermExactSequence ∧ B.periodicityDegreeTwo

theorem bott_periodicity_closed_from_evidence
    {K : KKCategoryPackage} (B : BottPeriodicityPackage K) (E : BottPeriodicityEvidence B) :
    BottPeriodicityClosed B := by
  exact And.intro E.bottMapClosed
    (And.intro E.bottMapInverseClosed
      (And.intro E.sixTermExactSequenceClosed E.periodicityDegreeTwoClosed))

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse