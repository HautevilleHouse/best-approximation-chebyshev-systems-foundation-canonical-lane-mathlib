import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BestApproximationChebyshevSystemsFoundationCanonicalLaneLean.ChebyshevSystemDefinition

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsFoundationCanonicalLaneLean

structure BestApproximationExistencePackage {O : ChebyshevAdmittedObject}
    (C : ChebyshevSystemPackage O) where
  continuousFunctions : Type u
  norm : (continuousFunctions → ℝ)
  existenceTheorem : ∀ (f : continuousFunctions), ∃ (p : O.space → ℝ), 
    (p ∈ Submodule.span ℝ (O.basis)) ∧ (∀ q ∈ Submodule.span ℝ (O.basis), ∥f - p∥ ≤ ∥f - q∥)

structure BestApproximationExistenceEvidence {O : ChebyshevAdmittedObject}
    {C : ChebyshevSystemPackage O} (E : BestApproximationExistencePackage C) where
  existenceTheoremClosed : E.existenceTheorem

def BestApproximationExistenceClosed {O : ChebyshevAdmittedObject}
    {C : ChebyshevSystemPackage O} (E : BestApproximationExistencePackage C) : Prop :=
  E.existenceTheorem

theorem best_approximation_existence_closed_from_evidence
    {O : ChebyshevAdmittedObject} {C : ChebyshevSystemPackage O}
    (E : BestApproximationExistencePackage C) 
    (Ev : BestApproximationExistenceEvidence E) : BestApproximationExistenceClosed E := by
  exact Ev.existenceTheoremClosed

end BestApproximationChebyshevSystemsFoundationCanonicalLaneLean
end HautevilleHouse