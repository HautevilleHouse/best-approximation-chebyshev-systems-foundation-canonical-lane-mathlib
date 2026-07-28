import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsFoundationCanonicalLaneLean

structure ChebyshevSystemPackage (E : Type*) [NormedAddCommGroup E] where
  n : ℕ
  functions : Fin n → E → ℝ
  haarProperty : Prop
  zeroFunctionExcluded : Prop
  linearIndependenceOnSet : (s : Set E) → Prop

structure ChebyshevSystemEvidence {E : Type*} [NormedAddCommGroup E]
    (P : ChebyshevSystemPackage E) where
  haarPropertyClosed : P.haarProperty
  zeroFunctionExcludedClosed : P.zeroFunctionExcluded
  linearIndependenceOnSetClosed : ∀ (s : Set E), P.linearIndependenceOnSet s

def ChebyshevSystemClosed {E : Type*} [NormedAddCommGroup E]
    (P : ChebyshevSystemPackage E) : Prop :=
  P.haarProperty ∧ P.zeroFunctionExcluded ∧ ∀ (s : Set E), P.linearIndependenceOnSet s

theorem chebyshev_system_closed_from_evidence {E : Type*} [NormedAddCommGroup E]
    (P : ChebyshevSystemPackage E) (Ev : ChebyshevSystemEvidence P) :
    ChebyshevSystemClosed P := by
  exact And.intro Ev.haarPropertyClosed (And.intro Ev.zeroFunctionExcludedClosed Ev.linearIndependenceOnSetClosed)

end BestApproximationChebyshevSystemsFoundationCanonicalLaneLean
end HautevilleHouse