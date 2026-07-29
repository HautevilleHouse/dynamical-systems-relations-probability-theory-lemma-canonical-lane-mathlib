import HautevilleHouse.DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean.RandomDynamicalSystem

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure ErgodicTheoremPackage (R : RandomDynamicalSystem Ω X) where
  invariantSigmaAlgebra : MeasurableSpace Ω
  conditionalExpectation : (Ω → ℝ) → (Ω → ℝ)
  almostSureConvergence : ∀ f : Ω → ℝ, Integrable f → ∀ᵐ ω, (1/n) * ∑_{i=0}^{n-1} f (R.shift^[i] ω) → conditionalExpectation f ω

structure ErgodicBridge (R : RandomDynamicalSystem Ω X) (E : ErgodicTheoremPackage R) where
  bridgeClosed : E.almostSureConvergence

theorem ergodic_bridge_from_package (R : RandomDynamicalSystem Ω X) (E : ErgodicTheoremPackage R) : ErgodicBridge R E :=
  { bridgeClosed := E.almostSureConvergence }

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse