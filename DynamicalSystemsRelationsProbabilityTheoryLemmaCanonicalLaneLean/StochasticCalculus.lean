import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure StochasticProcess where
  parameterSpace : Type u
  stateSpace : Type v
  paths : Type w

structure BrownianMotion extends StochasticProcess where
  independentIncrements : Prop
  stationaryIncrements : Prop
  continuousPaths : Prop

structure ItoIntegral (B : BrownianMotion) where
  integrand : Type u
  integralDefined : Prop
  isometryProperty : Prop

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse