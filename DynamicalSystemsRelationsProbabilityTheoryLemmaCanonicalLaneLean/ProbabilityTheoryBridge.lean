import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure ProbabilitySpace where
  sampleSpace : Type u
  sigmaAlgebra : Type v
  probabilityMeasure : Prop

structure RandomVariable (Ω : ProbabilitySpace) (E : Type w) where
  measurable : Prop

structure StrongLawOfLargeNumbers (Ω : ProbabilitySpace) (X : SequenceOfRandomVariables Ω) where
  iidCondition : Prop
  finiteMean : Prop
  almostSureConvergence : Prop

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse