import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRadiativeForcingCanonicalLaneLean

structure MilankovitchForcingPackage where
  obliquity : ℝ
  eccentricity : ℝ
  precession : ℝ
  insolationAnomaly : ℝ
  orbitalParametersTimeSeries : Prop
  insolationComputed : Prop
  iceVolumeResponse : Prop

structure MilankovitchForcingEvidence (M : MilankovitchForcingPackage) where
  orbitalParametersTimeSeriesClosed : M.orbitalParametersTimeSeries
  insolationComputedClosed : M.insolationComputed
  iceVolumeResponseClosed : M.iceVolumeResponse

def MilankovitchForcingClosed (M : MilankovitchForcingPackage) : Prop :=
  M.orbitalParametersTimeSeries ∧ M.insolationComputed ∧ M.iceVolumeResponse

theorem milankovitch_forcing_closed_from_evidence (M : MilankovitchForcingPackage)
    (Ev : MilankovitchForcingEvidence M) : MilankovitchForcingClosed M := by
  exact And.intro Ev.orbitalParametersTimeSeriesClosed
    (And.intro Ev.insolationComputedClosed Ev.iceVolumeResponseClosed)

end ClimateScienceRadiativeForcingCanonicalLaneLean
end HautevilleHouse