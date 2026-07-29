import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure StochasticProcess (Ω : ProbabilitySpace) where
  indexSet : Type u
  timeDomain : ℕ
  processMap : ℕ × Ω → ℝ
  measurableInTime : ∀ n, Measurable (λ ω : Ω => processMap (n, ω))
  adaptedToFiltration : Filterable Ω -- abstract
  samplePathContinuity : Prop
  samplePathContinuityTerm : samplePathContinuity

structure StochasticProcessEvidence (X : StochasticProcess Ω) where
  measurableInTimeClosed : X.measurableInTime
  adaptedToFiltrationClosed : X.adaptedToFiltration
  samplePathContinuityClosed : X.samplePathContinuity

def StochasticProcessClosed (X : StochasticProcess Ω) : Prop :=
  X.measurableInTime ∧ X.adaptedToFiltration ∧ X.samplePathContinuity

theorem stochastic_process_closed_from_evidence (X : StochasticProcess Ω) (E : StochasticProcessEvidence X) :
    StochasticProcessClosed X := by
  exact And.intro E.measurableInTimeClosed (And.intro E.adaptedToFiltrationClosed E.samplePathContinuityClosed)

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse