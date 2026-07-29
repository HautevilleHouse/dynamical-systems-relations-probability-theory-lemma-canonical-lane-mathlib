import canonicalLaneMathlib.AdmissibleClass

/-!
# Stochastic Calculus Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure StochasticCalculusPackage where
  probabilitySpace : Type u
  filtration : Type v
  semimartingale : Type w
  quadraticVariation : Prop
  itoFormula : Prop
  stochasticIntegral : Prop

structure StochasticCalculusEvidence (S : StochasticCalculusPackage) where
  quadraticVariationClosed : S.quadraticVariation
  itoFormulaClosed : S.itoFormula
  stochasticIntegralClosed : S.stochasticIntegral

def StochasticCalculusClosed (S : StochasticCalculusPackage) : Prop :=
  S.quadraticVariation ∧ S.itoFormula ∧ S.stochasticIntegral

theorem stochastic_calculus_closed_from_evidence
    (S : StochasticCalculusPackage) (E : StochasticCalculusEvidence S) :
    StochasticCalculusClosed S := by
  exact And.intro E.quadraticVariationClosed
    (And.intro E.itoFormulaClosed E.stochasticIntegralClosed)

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse