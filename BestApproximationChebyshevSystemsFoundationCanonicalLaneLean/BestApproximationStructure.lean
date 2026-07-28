import ChebyshevSystemFoundation

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsFoundationCanonicalLaneLean

structure BestApproximationPackage (C : ChebyshevAdmittedObject) where
  targetFunction : C.space → ℝ
  approximatingSubspace : Set (C.space → ℝ)
  bestApproximationExists : Prop
  uniqueness : Prop
  alternationCharacterization : Prop

structure BestApproximationEvidence {C : ChebyshevAdmittedObject}
    (P : BestApproximationPackage C) where
  bestApproximationExistsClosed : P.bestApproximationExists
  uniquenessClosed : P.uniqueness
  alternationCharacterizationClosed : P.alternationCharacterization

def BestApproximationClosed {C : ChebyshevAdmittedObject}
    (P : BestApproximationPackage C) : Prop :=
  P.bestApproximationExists ∧ P.uniqueness ∧ P.alternationCharacterization

theorem best_approximation_closed_from_evidence
    {C : ChebyshevAdmittedObject} (P : BestApproximationPackage C)
    (E : BestApproximationEvidence P) : BestApproximationClosed P := by
  exact And.intro E.bestApproximationExistsClosed
    (And.intro E.uniquenessClosed E.alternationCharacterizationClosed)

end BestApproximationChebyshevSystemsFoundationCanonicalLaneLean
end HautevilleHouse