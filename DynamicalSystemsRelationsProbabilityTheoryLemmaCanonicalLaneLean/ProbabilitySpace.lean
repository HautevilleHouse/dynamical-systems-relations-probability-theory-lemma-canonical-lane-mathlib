import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure ProbabilitySpace where
  carrier : Type u
  sigmaAlgebra : Set (Set carrier)
  measure : (Set carrier) → ℝ
  measureNonnegative : ∀ s, measure s ≥ 0
  measureEmpty : measure ∅ = 0
  measureCountablyAdditive : ∀ (f : ℕ → Set carrier), (∀ i j, i ≠ j → f i ∩ f j = ∅) →
    measure (⋃ i, f i) = ∑' i, measure (f i)
  measureSpaceComplete : Prop
  measureSpaceCompleteTerm : measureSpaceComplete

structure ProbabilitySpaceEvidence (Ω : ProbabilitySpace) where
  measureNonnegativeClosed : Ω.measureNonnegative
  measureEmptyClosed : Ω.measureEmpty
  measureCountablyAdditiveClosed : Ω.measureCountablyAdditive
  measureSpaceCompleteClosed : Ω.measureSpaceComplete

def ProbabilitySpaceClosed (Ω : ProbabilitySpace) : Prop :=
  Ω.measureNonnegative ∧ Ω.measureEmpty ∧ Ω.measureCountablyAdditive ∧ Ω.measureSpaceComplete

theorem probability_space_closed_from_evidence (Ω : ProbabilitySpace) (E : ProbabilitySpaceEvidence Ω) :
    ProbabilitySpaceClosed Ω := by
  exact And.intro E.measureNonnegativeClosed
    (And.intro E.measureEmptyClosed
      (And.intro E.measureCountablyAdditiveClosed E.measureSpaceCompleteClosed))

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse