import canonicalLaneMathlib.KTheory

namespace HautevilleHouse
namespace CategoriesFibrationsRelationsKTheory

structure KTheorySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure KTheoryAdmittedObject where
  space : KTheorySpace
  closedManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure KTheoryEndgameState where
  object : KTheoryAdmittedObject

def KTheoryWitnessClosed (O : KTheoryAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end CategoriesFibrationsRelationsKTheory
end HautevilleHouse