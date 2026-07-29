import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure StandardNormalDistribution where
  meanEqZero : Prop
  varianceEqOne : Prop

structure CentralLimitTheorem (X : SequenceOfRandomVariables) where
  iidCondition : Prop
  finiteVariance : Prop
  convergenceInDistribution : Prop

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse