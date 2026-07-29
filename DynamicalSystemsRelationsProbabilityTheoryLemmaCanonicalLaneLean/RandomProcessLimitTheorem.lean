import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure RandomProcessLimitTheoremPackage where
  process : Type u
  distribution : Type v
  weakConvergence : Prop
  centralLimitTheorem : Prop
  functionalCentralLimitTheorem : Prop

structure RandomProcessLimitTheoremEvidence (R : RandomProcessLimitTheoremPackage) where
  weakConvergenceClosed : R.weakConvergence
  centralLimitTheoremClosed : R.centralLimitTheorem
  functionalCentralLimitTheoremClosed : R.functionalCentralLimitTheorem

def RandomProcessLimitTheoremClosed (R : RandomProcessLimitTheoremPackage) : Prop :=
  R.weakConvergence ∧ R.centralLimitTheorem ∧ R.functionalCentralLimitTheorem

theorem random_process_limit_theorem_closed_from_evidence
    (R : RandomProcessLimitTheoremPackage) (E : RandomProcessLimitTheoremEvidence R) :
    RandomProcessLimitTheoremClosed R := by
  exact And.intro E.weakConvergenceClosed
    (And.intro E.centralLimitTheoremClosed E.functionalCentralLimitTheoremClosed)

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse