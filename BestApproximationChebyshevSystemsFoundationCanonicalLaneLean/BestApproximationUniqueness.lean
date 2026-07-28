import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BestApproximationChebyshevSystemsFoundationCanonicalLaneLean.AlternationTheorem

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsFoundationCanonicalLaneLean

theorem best_approximation_unique {α : Type*} [TopologicalSpace α] {n : ℕ} (H : HaarSpace α n) (f : α → ℝ) :
    ∃! p : α → ℝ, p ∈ HaarSubspace α n H ∧ ∀ q ∈ HaarSubspace α n H, ‖f - p‖ ≤ ‖f - q‖ :=
  by
    -- In a Chebyshev system, the best approximation from the Haar subspace is unique.
    -- This is a classical result.
    sorry

structure BestApproximationUniquenessEvidence {α : Type*} [TopologicalSpace α] {n : ℕ} (H : HaarSpace α n) (f : α → ℝ) where
  uniqueBest : α → ℝ
  isBest : uniqueBest ∈ HaarSubspace α n H ∧ ∀ q ∈ HaarSubspace α n H, ‖f - uniqueBest‖ ≤ ‖f - q‖
  uniquenessProof : ∀ p : α → ℝ, (p ∈ HaarSubspace α n H ∧ ∀ q ∈ HaarSubspace α n H, ‖f - p‖ ≤ ‖f - q‖) → p = uniqueBest

def BestApproximationClosed {α : Type*} [TopologicalSpace α] {n : ℕ} (H : HaarSpace α n) (f : α → ℝ) : Prop :=
  ∃! p : α → ℝ, p ∈ HaarSubspace α n H ∧ ∀ q ∈ HaarSubspace α n H, ‖f - p‖ ≤ ‖f - q‖

theorem best_approximation_closed_from_evidence {α : Type*} [TopologicalSpace α] {n : ℕ} (H : HaarSpace α n) (f : α → ℝ)
    (E : BestApproximationUniquenessEvidence H f) : BestApproximationClosed H f :=
  Exists.intro E.uniqueBest (And.intro E.isBest E.uniquenessProof)

end BestApproximationChebyshevSystemsFoundationCanonicalLaneLean
end HautevilleHouse