import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BestApproximationChebyshevSystemsFoundationCanonicalLaneLean.AlternationTheorem

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsFoundationCanonicalLaneLean

structure HaarConditionPackage {O : ChebyshevAdmittedObject}
    {C : ChebyshevSystemPackage O} {E : BestApproximationExistencePackage C}
    {A : AlternationTheoremPackage} where
  nonZeroAtDistinctPoints : ∀ (x y : O.space), x ≠ y → ∃ (f : O.basis), f x ≠ f y
  unisolvenceProperty : ∀ (x₁,...,x_{O.dimension} distinct), 
    (Δ : Matrix (Fin O.dimension) (Fin O.dimension) ℝ) where Δ i j = (O.basis.get i) x_j is invertible

structure HaarConditionEvidence {O : ChebyshevAdmittedObject}
    {C : ChebyshevSystemPackage O} {E : BestApproximationExistencePackage C}
    {A : AlternationTheoremPackage} (H : HaarConditionPackage) where
  nonZeroAtDistinctPointsClosed : H.nonZeroAtDistinctPoints
  unisolvencePropertyClosed : H.unisolvenceProperty

def HaarConditionClosed {O : ChebyshevAdmittedObject}
    {C : ChebyshevSystemPackage O} {E : BestApproximationExistencePackage C}
    {A : AlternationTheoremPackage} (H : HaarConditionPackage) : Prop :=
  H.nonZeroAtDistinctPoints ∧ H.unisolvenceProperty

theorem haar_condition_closed_from_evidence
    {O : ChebyshevAdmittedObject} {C : ChebyshevSystemPackage O}
    {E : BestApproximationExistencePackage C} {A : AlternationTheoremPackage}
    (H : HaarConditionPackage) (Ev : HaarConditionEvidence H) : HaarConditionClosed H := by
  exact And.intro Ev.nonZeroAtDistinctPointsClosed Ev.unisolvencePropertyClosed

end BestApproximationChebyshevSystemsFoundationCanonicalLaneLean
end HautevilleHouse