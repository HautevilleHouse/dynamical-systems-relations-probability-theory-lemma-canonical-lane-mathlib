import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure DynamicalProbabilityAdmittedObject where
  probabilitySpace : Type u
  topology : TopologicalSpace probabilitySpace
  measure : probabilitySpace → ℝ≥0∞
  dynamics : probabilitySpace → probabilitySpace
  invariantMeasure : Prop
  ergodic : Prop
  conclusion : invariantMeasure

structure AdmissibleClass where
  object : DynamicalProbabilityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DynamicalProbabilityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse