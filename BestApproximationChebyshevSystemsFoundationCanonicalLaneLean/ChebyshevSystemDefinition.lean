import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BestApproximationChebyshevSystemsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsFoundationCanonicalLaneLean

structure ChebyshevSystemPackage (O : ChebyshevAdmittedObject) where
  basisDimension : O.dimension = List.length O.basis
  haarConditionClosed : O.haarCondition
  basisLinearIndependent : LinearIndependent ℝ (λ (f : O.space → ℝ) => f)

structure ChebyshevSystemEvidence {O : ChebyshevAdmittedObject} (C : ChebyshevSystemPackage O) where
  basisDimensionClosed : C.basisDimension
  haarConditionClosed : C.haarConditionClosed

def ChebyshevSystemClosed {O : ChebyshevAdmittedObject} (C : ChebyshevSystemPackage O) : Prop :=
  C.basisDimension ∧ C.haarConditionClosed

theorem chebyshev_system_closed_from_evidence
    {O : ChebyshevAdmittedObject} (C : ChebyshevSystemPackage O)
    (E : ChebyshevSystemEvidence C) : ChebyshevSystemClosed C := by
  exact And.intro E.basisDimensionClosed E.haarConditionClosed

end BestApproximationChebyshevSystemsFoundationCanonicalLaneLean
end HautevilleHouse