import canonicalLaneMathlib.AdmissibleClass
import CategoriesFibrationsRelationsKTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

structure KKCategoryPackage where
  cstarAlgebras : Type u
  kasparovProduct : Prop
  kasparovProductAssociative : Prop
  kasparovProductUnit : Prop
  kasparovProductCompatible : Prop

structure KKCategoryEvidence (K : KKCategoryPackage) where
  kasparovProductClosed : K.kasparovProduct
  kasparovProductAssociativeClosed : K.kasparovProductAssociative
  kasparovProductUnitClosed : K.kasparovProductUnit
  kasparovProductCompatibleClosed : K.kasparovProductCompatible

def KKCategoryClosed (K : KKCategoryPackage) : Prop :=
  K.kasparovProduct ∧ K.kasparovProductAssociative ∧
  K.kasparovProductUnit ∧ K.kasparovProductCompatible

theorem kk_category_closed_from_evidence (K : KKCategoryPackage) (E : KKCategoryEvidence K) :
    KKCategoryClosed K := by
  exact And.intro E.kasparovProductClosed
    (And.intro E.kasparovProductAssociativeClosed
      (And.intro E.kasparovProductUnitClosed E.kasparovProductCompatibleClosed))

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse