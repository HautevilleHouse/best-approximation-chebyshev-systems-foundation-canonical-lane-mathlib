import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BestApproximationChebyshevSystemsFoundationCanonicalLaneLean.ChebyshevSystem

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsFoundationCanonicalLaneLean

structure AlternationTheoremPackage {E : Type*} [NormedAddCommGroup E]
    (P : ChebyshevSystemPackage E) where
  bestApproximationExists : Prop
  alternationCharacterization : Prop
  uniqueness : Prop
  existence : Prop

structure AlternationTheoremEvidence {E : Type*} [NormedAddCommGroup E]
    {P : ChebyshevSystemPackage E} (A : AlternationTheoremPackage P) where
  bestApproximationExistsClosed : A.bestApproximationExists
  alternationCharacterizationClosed : A.alternationCharacterization
  uniquenessClosed : A.uniqueness
  existenceClosed : A.existence

def AlternationTheoremClosed {E : Type*} [NormedAddCommGroup E]
    {P : ChebyshevSystemPackage E} (A : AlternationTheoremPackage P) : Prop :=
  A.bestApproximationExists ∧ A.alternationCharacterization ∧ A.uniqueness ∧ A.existence

theorem alternation_theorem_closed_from_evidence {E : Type*} [NormedAddCommGroup E]
    {P : ChebyshevSystemPackage E} (A : AlternationTheoremPackage P)
    (Ev : AlternationTheoremEvidence A) : AlternationTheoremClosed A := by
  exact And.intro Ev.bestApproximationExistsClosed
    (And.intro Ev.alternationCharacterizationClosed
      (And.intro Ev.uniquenessClosed Ev.existenceClosed))

end BestApproximationChebyshevSystemsFoundationCanonicalLaneLean
end HautevilleHouse