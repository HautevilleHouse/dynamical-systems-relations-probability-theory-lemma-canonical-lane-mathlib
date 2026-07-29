import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure MeasurePreservingTransformation (DS : DynamicalSystem) where
  invariantMeasure : Prop
  measurePreserving : Prop

structure BirkhoffErgodicTheorem (DS : DynamicalSystem) (T : MeasurePreservingTransformation DS) where
  ergodicCondition : Prop
  timeAverageEqualsSpaceAverage : Prop

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse