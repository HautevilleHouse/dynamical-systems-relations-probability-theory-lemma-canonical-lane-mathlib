import canonicalLaneMathlib.AdmissibleClass

/-!
# Limit Theorems Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean

structure LimitTheoremsPackage where
  probabilitySpace : Type u
  randomVariables : Type v
  lawOfLargeNumbers : Prop
  centralLimitTheorem : Prop
  largeDeviations : Prop

structure LimitTheoremsEvidence (L : LimitTheoremsPackage) where
  lawOfLargeNumbersClosed : L.lawOfLargeNumbers
  centralLimitTheoremClosed : L.centralLimitTheorem
  largeDeviationsClosed : L.largeDeviations

def LimitTheoremsClosed (L : LimitTheoremsPackage) : Prop :=
  L.lawOfLargeNumbers ∧ L.centralLimitTheorem ∧ L.largeDeviations

theorem limit_theorems_closed_from_evidence
    (L : LimitTheoremsPackage) (E : LimitTheoremsEvidence L) :
    LimitTheoremsClosed L := by
  exact And.intro E.lawOfLargeNumbersClosed
    (And.intro E.centralLimitTheoremClosed E.largeDeviationsClosed)

end DynamicalSystemsRelationsProbabilityTheoryLemmaCanonicalLaneLean
end HautevilleHouse