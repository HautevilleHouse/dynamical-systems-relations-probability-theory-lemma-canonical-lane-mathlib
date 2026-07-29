import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean.ProbabilisticMetricSpace

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure MeasurePreservingSystem (Ω : Type u) (P : ProbabilitySpace Ω) where
  transformation : Ω → Ω
  measurable : Measurable transformation
  preservesMeasure : ∀ A, measurableSet A → P.probabilityMeasure (transformation⁻¹' A) = P.probabilityMeasure A

structure ErgodicSystem (Ω : Type u) (P : ProbabilitySpace Ω) extends MeasurePreservingSystem Ω P where
  ergodic : ∀ A, measurableSet A → (transformation⁻¹' A = A) → (P.probabilityMeasure A = 0 ∨ P.probabilityMeasure A = 1)

structure BirkhoffErgodicTheoremPackage where
  timeAverages : Prop
  spaceAverages : Prop
  almostSureConvergence : Prop
  limitEqualsExpectation : Prop

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse