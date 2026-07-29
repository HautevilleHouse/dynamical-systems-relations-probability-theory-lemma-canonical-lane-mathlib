import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure StochasticCalculusBridgePackage where
  itoIntegral : Type u
  quadraticVariation : Prop
  itoFormula : Prop
  stochasticDifferentialEquation : Prop

structure StochasticCalculusBridgeEvidence (S : StochasticCalculusBridgePackage) where
  itoIntegralClosed : True
  quadraticVariationClosed : S.quadraticVariation
  itoFormulaClosed : S.itoFormula
  stochasticDifferentialEquationClosed : S.stochasticDifferentialEquation

def StochasticCalculusBridgeClosed (S : StochasticCalculusBridgePackage) : Prop :=
  S.quadraticVariation ∧ S.itoFormula ∧ S.stochasticDifferentialEquation

theorem stochastic_calculus_bridge_closed_from_evidence (S : StochasticCalculusBridgePackage)
    (E : StochasticCalculusBridgeEvidence S) : StochasticCalculusBridgeClosed S := by
  exact And.intro E.quadraticVariationClosed
    (And.intro E.itoFormulaClosed E.stochasticDifferentialEquationClosed)

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse