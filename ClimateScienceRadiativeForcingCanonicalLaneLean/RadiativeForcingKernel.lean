import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRadiativeForcingCanonicalLaneLean

structure RadiativeForcingKernel where
  co2Forcing : ℝ
  solarForcing : ℝ
  aerosolForcing : ℝ
  totalForcing : ℝ

structure RadiativeForcingKernelEvidence (R : RadiativeForcingKernel) where
  co2ForcingClosed : R.co2Forcing > 0
  solarForcingClosed : R.solarForcing ∈ ℝ
  aerosolForcingClosed : R.aerosolForcing < 0
  totalForcingClosed : R.totalForcing = R.co2Forcing + R.solarForcing + R.aerosolForcing

def RadiativeForcingKernelClosed (R : RadiativeForcingKernel) : Prop :=
  R.co2Forcing > 0 ∧ R.solarForcing ∈ ℝ ∧ R.aerosolForcing < 0 ∧ R.totalForcing = R.co2Forcing + R.solarForcing + R.aerosolForcing

theorem radiative_forcing_kernel_closed_from_evidence (R : RadiativeForcingKernel) (Ev : RadiativeForcingKernelEvidence R) : RadiativeForcingKernelClosed R := by
  exact And.intro Ev.co2ForcingClosed (And.intro Ev.solarForcingClosed (And.intro Ev.aerosolForcingClosed Ev.totalForcingClosed))

end ClimateScienceRadiativeForcingCanonicalLaneLean
end HautevilleHouse