import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure MartingaleConvergencePackage where
  underlyingProcess : Type u
  filtration : Type v
  martingaleProperty : Prop
  convergenceInL1 : Prop
  a.s.Convergence : Prop

structure MartingaleConvergenceEvidence (M : MartingaleConvergencePackage) where
  martingalePropertyClosed : M.martingaleProperty
  convergenceInL1Closed : M.convergenceInL1
  a_s_ConvergenceClosed : M.a.s.Convergence

def MartingaleConvergenceClosed (M : MartingaleConvergencePackage) : Prop :=
  M.martingaleProperty ∧ M.convergenceInL1 ∧ M.a.s.Convergence

theorem martingale_convergence_closed_from_evidence (M : MartingaleConvergencePackage)
    (E : MartingaleConvergenceEvidence M) : MartingaleConvergenceClosed M := by
  exact And.intro E.martingalePropertyClosed
    (And.intro E.convergenceInL1Closed E.a_s_ConvergenceClosed)

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse