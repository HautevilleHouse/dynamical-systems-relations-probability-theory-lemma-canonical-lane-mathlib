import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure ProbabilitySpace (Ω : Type u) where
  carrier : Type u
  sigmaAlgebra : Set (Set carrier)
  probabilityMeasure : (carrier → ℝ) → ℝ
  isProbability : probabilityMeasure (fun _ => 1) = 1
  nonnegative : ∀ f ≥ 0, probabilityMeasure f ≥ 0
  sigmaAdditive : ∀ (f : ℕ → carrier → ℝ), (∀ n, f n ≥ 0) → probabilityMeasure (∑' n, f n) = ∑' n, probabilityMeasure (f n)

structure ProbabilisticMetricSpace (Ω : Type u) where
  space : ProbabilitySpace Ω
  metric : Ω → Ω → ℝ
  nonnegative : ∀ x y, metric x y ≥ 0
  symmetric : ∀ x y, metric x y = metric y x
  triangleInequality : ∀ x y z, metric x z ≤ metric x y + metric y z
  separability : ∃ (S : Set Ω), Set.Countable S ∧ ∀ ε > 0, ∀ x, ∃ y ∈ S, metric x y < ε

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse