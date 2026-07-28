import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BestApproximationChebyshevSystemsFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BestApproximationChebyshevSystemsFoundationCanonicalLaneLean
end HautevilleHouse