import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure DynamicalSystem where
  stateSpace : Type u
  timeDomain : Type v
  evolution : timeDomain → stateSpace → stateSpace
  semiGroupProperty : Prop

structure InvariantMeasure (DS : DynamicalSystem) where
  measure : Type w
  invariant : Prop

structure Ergodicity (DS : DynamicalSystem) (μ : InvariantMeasure DS) where
  ergodic : Prop

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse