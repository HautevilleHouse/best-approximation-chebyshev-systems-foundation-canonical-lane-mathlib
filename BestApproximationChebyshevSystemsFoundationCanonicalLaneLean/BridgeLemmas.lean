import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BestApproximationChebyshevSystemsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsFoundationCanonicalLaneLean

def ChebyshevWitnessClosed (O : ChebyshevAdmittedObject) : Prop :=
  O.bestApproximation = λ f => (f - O.basis[0] * (f(O.space) / O.basis[0](O.space)))

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ChebyshevWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  rfl

end BestApproximationChebyshevSystemsFoundationCanonicalLaneLean
end HautevilleHouse