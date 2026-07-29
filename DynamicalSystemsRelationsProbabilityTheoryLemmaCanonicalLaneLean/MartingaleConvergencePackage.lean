import canonicalLaneMathlib.AdmissibleClass

/-!
# Martingale Convergence Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure MartingaleConvergencePackage where
  probabilitySpace : Type u
  sigmaAlgebra : Type v
  filtration : Type w
  adaptedProcess : Type x
  integrability : Prop
  almostSureConvergence : Prop
  limitIntegrable : Prop

structure MartingaleConvergenceEvidence (M : MartingaleConvergencePackage) where
  integrabilityClosed : M.integrability
  almostSureConvergenceClosed : M.almostSureConvergence
  limitIntegrableClosed : M.limitIntegrable

def MartingaleConvergenceClosed (M : MartingaleConvergencePackage) : Prop :=
  M.integrability ∧ M.almostSureConvergence ∧ M.limitIntegrable

theorem martingale_convergence_closed_from_evidence
    (M : MartingaleConvergencePackage) (E : MartingaleConvergenceEvidence M) :
    MartingaleConvergenceClosed M := by
  exact And.intro E.integrabilityClosed
    (And.intro E.almostSureConvergenceClosed E.limitIntegrableClosed)

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse