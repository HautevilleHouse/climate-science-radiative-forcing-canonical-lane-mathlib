import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRadiativeForcingCanonicalLaneLean

structure MilankovitchCycles where
  orbitalEccentricity : Prop
  axialObliquity : Prop
  precessionOfEquinox : Prop
  insolationVariation : Prop
  iceAgeTiming : Prop

structure MilankovitchCyclesEvidence (M : MilankovitchCycles) where
  orbitalEccentricityClosed : M.orbitalEccentricity
  axialObliquityClosed : M.axialObliquity
  precessionOfEquinoxClosed : M.precessionOfEquinox
  insolationVariationClosed : M.insolationVariation
  iceAgeTimingClosed : M.iceAgeTiming

def MilankovitchCyclesClosed (M : MilankovitchCycles) : Prop :=
  M.orbitalEccentricity ∧ M.axialObliquity ∧ M.precessionOfEquinox ∧
  M.insolationVariation ∧ M.iceAgeTiming

theorem milankovitch_cycles_closed_from_evidence (M : MilankovitchCycles)
    (Ev : MilankovitchCyclesEvidence M) : MilankovitchCyclesClosed M := by
  exact And.intro Ev.orbitalEccentricityClosed
    (And.intro Ev.axialObliquityClosed
      (And.intro Ev.precessionOfEquinoxClosed
        (And.intro Ev.insolationVariationClosed Ev.iceAgeTimingClosed)))

end ClimateScienceRadiativeForcingCanonicalLaneLean
end HautevilleHouse