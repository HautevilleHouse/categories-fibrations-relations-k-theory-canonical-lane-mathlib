import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.bridgeClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CategoriesFibrationsRelationsKTheoryCanonicalLaneLean
end HautevilleHouse