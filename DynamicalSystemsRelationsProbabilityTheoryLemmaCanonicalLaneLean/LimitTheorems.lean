import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure LimitTheoremPackage (Ω : ProbabilitySpace) where
  sequence : ℕ → (Ω → ℝ)
  limitType : String -- "almostSurely", "inProbability", "inDistribution"
  convergenceStatement : Prop
  rateOfConvergence : Prop
  centralLimitTheoremApplicable : Prop
  lawOfLargeNumbers : Prop
  lawOfLargeNumbersTerm : lawOfLargeNumbers
  centralLimitTheoremApplicableTerm : centralLimitTheoremApplicable

structure LimitTheoremEvidence {Ω : ProbabilitySpace} (L : LimitTheoremPackage Ω) where
  convergenceStatementClosed : L.convergenceStatement
  rateOfConvergenceClosed : L.rateOfConvergence
  lawOfLargeNumbersClosed : L.lawOfLargeNumbers
  centralLimitTheoremApplicableClosed : L.centralLimitTheoremApplicable

def LimitTheoremClosed {Ω : ProbabilitySpace} (L : LimitTheoremPackage Ω) : Prop :=
  L.convergenceStatement ∧ L.rateOfConvergence ∧ L.lawOfLargeNumbers ∧ L.centralLimitTheoremApplicable

theorem limit_theorem_closed_from_evidence {Ω : ProbabilitySpace} (L : LimitTheoremPackage Ω) (E : LimitTheoremEvidence L) :
    LimitTheoremClosed L := by
  exact And.intro E.convergenceStatementClosed
    (And.intro E.rateOfConvergenceClosed
      (And.intro E.lawOfLargeNumbersClosed E.centralLimitTheoremApplicableClosed))

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse