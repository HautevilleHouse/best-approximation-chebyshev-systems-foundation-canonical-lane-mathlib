import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BestApproximationChebyshevSystemsFoundationCanonicalLaneLean.ChebyshevSystem

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsFoundationCanonicalLaneLean

structure BestApproximation (X : Type u) (𝕜 : Type v) [LinearOrderedField 𝕜] (C : ChebyshevSystem X 𝕜) where
  targetFunction : X → 𝕜
  approximant : X → 𝕜
  errorFunction : X → 𝕜
  bestApproximationProperty : Prop
  uniqueness : Prop

structure BestApproximationEvidence (X : Type u) (𝕜 : Type v) [LinearOrderedField 𝕜] (C : ChebyshevSystem X 𝕜) (B : BestApproximation X 𝕜 C) where
  bestApproximationPropertyClosed : B.bestApproximationProperty
  uniquenessClosed : B.uniqueness

def BestApproximationClosed (X : Type u) (𝕜 : Type v) [LinearOrderedField 𝕜] (C : ChebyshevSystem X 𝕜) (B : BestApproximation X 𝕜 C) : Prop :=
  B.bestApproximationProperty ∧ B.uniqueness

theorem best_approximation_closed_from_evidence (X : Type u) (𝕜 : Type v) [LinearOrderedField 𝕜]
    (C : ChebyshevSystem X 𝕜) (B : BestApproximation X 𝕜 C) (E : BestApproximationEvidence X 𝕜 C B) :
    BestApproximationClosed X 𝕜 C B := by
  exact And.intro E.bestApproximationPropertyClosed E.uniquenessClosed

end BestApproximationChebyshevSystemsFoundationCanonicalLaneLean
end HautevilleHouse
