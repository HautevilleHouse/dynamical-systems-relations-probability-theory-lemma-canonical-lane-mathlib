import HautevilleHouse.DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean.ErgodicTheoremBridge

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure LargeDeviationsPackage (R : RandomDynamicalSystem Ω X) where
  rateFunction : X → ℝ≥0∞
  lowerBound : ∀ open U, liminf (1/n) log μ(R.cocycle n ω ∈ U) ≥ -inf_{x∈U} rateFunction x
  upperBound : ∀ closed F, limsup (1/n) log μ(R.cocycle n ω ∈ F) ≤ -inf_{x∈F} rateFunction x

def LargeDeviationsClosed (L : LargeDeviationsPackage R) : Prop :=
  L.lowerBound ∧ L.upperBound

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse