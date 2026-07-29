import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure DynamicalProbabilityAdmittedObject where
  carrier : Type
  probabilityMeasure : Prop
  dynamicalSystem : Prop
  limitTheorem : Prop
  conclusion : limitTheorem

def DynamicalProbabilityWitnessClosed (O : DynamicalProbabilityAdmittedObject) : Prop :=
  O.limitTheorem

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse