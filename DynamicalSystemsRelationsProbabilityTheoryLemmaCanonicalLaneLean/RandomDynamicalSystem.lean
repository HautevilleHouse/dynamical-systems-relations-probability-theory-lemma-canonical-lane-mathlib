import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure RandomDynamicalSystem (Ω : ProbabilitySpace) where
  stateSpace : Type u
  dynamics : ℕ × Ω × stateSpace → stateSpace
  cocycleProperty : ∀ n m ω x, dynamics (n+m, ω, x) = dynamics (n, θ^m ω, dynamics (m, ω, x))
  measurableDrivingSequence : Prop
  invariantMeasure : (Set stateSpace) → ℝ
  ergodicity : Prop
  invariantMeasureTerm : invariantMeasure
  ergodicityTerm : ergodicity

structure RandomDynamicalSystemEvidence (R : RandomDynamicalSystem Ω) where
  cocyclePropertyClosed : R.cocycleProperty
  measurableDrivingSequenceClosed : R.measurableDrivingSequence
  invariantMeasureClosed : R.invariantMeasure
  ergodicityClosed : R.ergodicity

def RandomDynamicalSystemClosed (R : RandomDynamicalSystem Ω) : Prop :=
  R.cocycleProperty ∧ R.measurableDrivingSequence ∧ R.invariantMeasure ∧ R.ergodicity

theorem random_dynamical_system_closed_from_evidence (R : RandomDynamicalSystem Ω) (E : RandomDynamicalSystemEvidence R) :
    RandomDynamicalSystemClosed R := by
  exact And.intro E.cocyclePropertyClosed
    (And.intro E.measurableDrivingSequenceClosed
      (And.intro E.invariantMeasureClosed E.ergodicityClosed))

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse