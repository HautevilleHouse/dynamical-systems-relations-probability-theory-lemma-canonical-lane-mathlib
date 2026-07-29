import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure MartingalePackage (Ω : ProbabilitySpace) where
  filtration : ℕ → Set (Set Ω)
  adaptedProcess : ℕ → (Ω → ℝ)
  integrability : ∀ n, integrable (adaptedProcess n)
  martingaleProperty : ∀ n m, n ≤ m → conditionalExpectation (adaptedProcess n) (filtration m) = adaptedProcess n
  convergenceTarget : Prop

structure MartingaleEvidence {Ω : ProbabilitySpace} (M : MartingalePackage Ω) where
  integrabilityClosed : M.integrability
  martingalePropertyClosed : M.martingaleProperty
  convergenceTargetClosed : M.convergenceTarget

def MartingaleClosed {Ω : ProbabilitySpace} (M : MartingalePackage Ω) : Prop :=
  M.integrability ∧ M.martingaleProperty ∧ M.convergenceTarget

theorem martingale_closed_from_evidence {Ω : ProbabilitySpace} (M : MartingalePackage Ω) (E : MartingaleEvidence M) :
    MartingaleClosed M := by
  exact And.intro E.integrabilityClosed (And.intro E.martingalePropertyClosed E.convergenceTargetClosed)

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse