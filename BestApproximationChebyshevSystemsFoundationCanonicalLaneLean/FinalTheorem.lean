import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BestApproximationChebyshevSystemsFoundationCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.BestApproximationChebyshevSystemsFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsFoundationCanonicalLaneLean

def ConstrainedChebyshevApproximationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chebyshev_approximation_endgame (A : AdmissibleClass) :
    ConstrainedChebyshevApproximationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BestApproximationChebyshevSystemsFoundationCanonicalLaneLean
end HautevilleHouse