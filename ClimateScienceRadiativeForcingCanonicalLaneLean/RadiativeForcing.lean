import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRadiativeForcingCanonicalLaneLean

structure ForcingComponent where
  co2 : ℝ
  ch4 : ℝ
  n2o : ℝ
  solar : ℝ
  aerosol : ℝ

structure ForcingEvidence (F : ForcingComponent) where
  co2Positive : F.co2 > 0
  ch4Positive : F.ch4 > 0
  n2oPositive : F.n2o > 0
  solarNonnegative : F.solar ≥ 0
  aerosolNonpositive : F.aerosol ≤ 0

def ForcingClosed (F : ForcingComponent) : Prop :=
  F.co2 > 0 ∧ F.ch4 > 0 ∧ F.n2o > 0 ∧ F.solar ≥ 0 ∧ F.aerosol ≤ 0

theorem forcing_closed_from_evidence (F : ForcingComponent) (Ev : ForcingEvidence F) : ForcingClosed F := by
  exact And.intro Ev.co2Positive (And.intro Ev.ch4Positive (And.intro Ev.n2oPositive (And.intro Ev.solarNonnegative Ev.aerosolNonpositive)))

end ClimateScienceRadiativeForcingCanonicalLaneLean
end HautevilleHouse