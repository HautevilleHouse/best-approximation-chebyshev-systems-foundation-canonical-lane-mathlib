import canonicalLaneMathlib.AdmissibleClass
import BestApproximationChebyshevSystemsFoundationCanonicalLaneLean.HaarCondition
import BestApproximationChebyshevSystemsFoundationCanonicalLaneLean.BestApproximationOperator
import BestApproximationChebyshevSystemsFoundationCanonicalLaneLean.AlternationTheorem

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsFoundationCanonicalLaneLean

structure ChebyshevSystemFoundationPackage where
  haarCondition : HaarConditionPackage (ChebyshevSpace.mk (Set.univ : Set ℝ) 0 True)
  bestApproximation : BestApproximationPackage (ChebyshevSpace.mk (Set.univ : Set ℝ) 0 True)
  alternation : AlternationTheoremPackage (ChebyshevSpace.mk (Set.univ : Set ℝ) 0 True)
  haEv : HaarConditionEvidence haarCondition
  baEv : BestApproximationEvidence bestApproximation
  altEv : AlternationTheoremEvidence alternation

def ChebyshevSystemFoundationClosed (P : ChebyshevSystemFoundationPackage) : Prop :=
  HaarConditionClosed P.haarCondition ∧ BestApproximationClosed P.bestApproximation ∧ AlternationTheoremClosed P.alternation

theorem chebyshev_system_foundation_closed_from_evidence (P : ChebyshevSystemFoundationPackage) :
    ChebyshevSystemFoundationClosed P := by
  exact And.intro (haar_condition_closed_from_evidence P.haarCondition P.haEv)
    (And.intro (best_approximation_closed_from_evidence P.bestApproximation P.baEv)
      (alternation_theorem_closed_from_evidence P.alternation P.altEv))

end BestApproximationChebyshevSystemsFoundationCanonicalLaneLean
end HautevilleHouse