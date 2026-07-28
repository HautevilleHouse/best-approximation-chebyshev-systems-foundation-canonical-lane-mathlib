import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsFoundationCanonicalLaneLean

structure ChebyshevAdmittedObject where
  space : Type u
  chebyshevSystem : Type v
  hausdorffDim : ℕ
  alternationProperty : Prop
  conclusion : alternationProperty

def ChebyshevWitnessClosed (O : ChebyshevAdmittedObject) : Prop :=
  O.alternationProperty

end BestApproximationChebyshevSystemsFoundationCanonicalLaneLean
end HautevilleHouse