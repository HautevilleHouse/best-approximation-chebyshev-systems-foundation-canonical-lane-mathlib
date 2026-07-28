import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsFoundationCanonicalLaneLean

structure ChebyshevAdmittedObject where
  space : Type u
  dimension : ℕ
  basis : List (space → ℝ)
  haarCondition : Prop
  bestApproximation : space → (space → ℝ) → ℝ

structure AdmissibleClass where
  object : ChebyshevAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChebyshevWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BestApproximationChebyshevSystemsFoundationCanonicalLaneLean
end HautevilleHouse