import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsFoundationCanonicalLaneLean

structure BestApproximationPackage (E : ChebyshevSpace) where
  targetFunction : E.carrier → ℝ
  subspaceDimension : ℕ
  bestApproximation : E.carrier → ℝ
  existenceProof : Prop
  uniquenessProof : Prop
  characterizationProof : Prop

structure BestApproximationEvidence {E : ChebyshevSpace}
    (B : BestApproximationPackage E) where
  existenceClosed : B.existenceProof
  uniquenessClosed : B.uniquenessProof
  characterizationClosed : B.characterizationProof

def BestApproximationClosed {E : ChebyshevSpace}
    (B : BestApproximationPackage E) : Prop :=
  B.existenceProof ∧ B.uniquenessProof ∧ B.characterizationProof

theorem best_approximation_closed_from_evidence
    {E : ChebyshevSpace} (B : BestApproximationPackage E)
    (Evi : BestApproximationEvidence B) : BestApproximationClosed B := by
  exact And.intro Evi.existenceClosed
    (And.intro Evi.uniquenessClosed Evi.characterizationClosed)

end BestApproximationChebyshevSystemsFoundationCanonicalLaneLean
end HautevilleHouse