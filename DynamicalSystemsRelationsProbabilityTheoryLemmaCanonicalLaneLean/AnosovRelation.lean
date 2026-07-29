import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure AnosovRelation (Ω : ProbabilitySpace) where
  baseTransformation : Ω → Ω
  measurePreserving : measure ∘ baseTransformation⁻¹' = measure
  hyperbolicity : Prop
  stableUnstableFoliation : Prop
  exponentialMixing : Prop
  decayOfCorrelations : Prop
  measurePreservingTerm : measurePreserving
  hyperbolicityTerm : hyperbolicity

structure AnosovRelationEvidence (A : AnosovRelation Ω) where
  measurePreservingClosed : A.measurePreserving
  hyperbolicityClosed : A.hyperbolicity
  stableUnstableFoliationClosed : A.stableUnstableFoliation
  exponentialMixingClosed : A.exponentialMixing
  decayOfCorrelationsClosed : A.decayOfCorrelations

def AnosovRelationClosed (A : AnosovRelation Ω) : Prop :=
  A.measurePreserving ∧ A.hyperbolicity ∧ A.stableUnstableFoliation ∧ A.exponentialMixing ∧ A.decayOfCorrelations

theorem anosov_relation_closed_from_evidence (A : AnosovRelation Ω) (E : AnosovRelationEvidence A) :
    AnosovRelationClosed A := by
  exact And.intro E.measurePreservingClosed
    (And.intro E.hyperbolicityClosed
      (And.intro E.stableUnstableFoliationClosed
        (And.intro E.exponentialMixingClosed E.decayOfCorrelationsClosed)))

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse