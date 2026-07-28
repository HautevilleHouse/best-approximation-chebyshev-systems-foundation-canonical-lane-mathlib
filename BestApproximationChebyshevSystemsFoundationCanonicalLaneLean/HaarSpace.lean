import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BestApproximationChebyshevSystemsFoundationCanonicalLaneLean.ChebyshevSystem

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsFoundationCanonicalLaneLean

structure HaarSpace (α : Type*) [TopologicalSpace α] (n : ℕ) where
  chebyshevSystem : ChebyshevSystem α n
  dimension : Fin (n+1)
  hahnBanachProperty : ∀ (f : α → ℝ) (h : ∀ (x : α), f x = 0 → False), ∃ (g : α → ℝ), g ∈ Set.range (fun (c : ℝ^(n+1)) (x : α) => ∑ i : Fin (n+1), c i * chebyshevSystem.functions i x) ∧ ∀ x, g x * f x ≥ 0

def HaarSubspace (α : Type*) [TopologicalSpace α] (n : ℕ) (H : HaarSpace α n) : Set (α → ℝ) :=
  Set.range (fun (c : ℝ^(n+1)) (x : α) => ∑ i : Fin (n+1), c i * H.chebyshevSystem.functions i x)

end BestApproximationChebyshevSystemsFoundationCanonicalLaneLean
end HautevilleHouse