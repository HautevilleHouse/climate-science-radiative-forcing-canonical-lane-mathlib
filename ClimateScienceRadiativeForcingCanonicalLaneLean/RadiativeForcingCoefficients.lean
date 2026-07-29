import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRadiativeForcingCanonicalLaneLean

structure RadiativeForcingCoefficients where
  co2ForcingCoefficient : Prop
  ch4ForcingCoefficient : Prop
  n2oForcingCoefficient : Prop
  aerosolDirectEffect : Prop
  aerosolIndirectEffect : Prop
  cloudFeedbackFactor : Prop
  waterVaporFeedback : Prop
  lapseRateFeedback : Prop
  surfaceAlbedoFeedback : Prop

structure RadiativeForcingCoefficientsEvidence (R : RadiativeForcingCoefficients) where
  co2ForcingCoefficientClosed : R.co2ForcingCoefficient
  ch4ForcingCoefficientClosed : R.ch4ForcingCoefficient
  n2oForcingCoefficientClosed : R.n2oForcingCoefficient
  aerosolDirectEffectClosed : R.aerosolDirectEffect
  aerosolIndirectEffectClosed : R.aerosolIndirectEffect
  cloudFeedbackFactorClosed : R.cloudFeedbackFactor
  waterVaporFeedbackClosed : R.waterVaporFeedback
  lapseRateFeedbackClosed : R.lapseRateFeedback
  surfaceAlbedoFeedbackClosed : R.surfaceAlbedoFeedback

def RadiativeForcingCoefficientsClosed (R : RadiativeForcingCoefficients) : Prop :=
  R.co2ForcingCoefficient ∧ R.ch4ForcingCoefficient ∧ R.n2oForcingCoefficient ∧
  R.aerosolDirectEffect ∧ R.aerosolIndirectEffect ∧ R.cloudFeedbackFactor ∧
  R.waterVaporFeedback ∧ R.lapseRateFeedback ∧ R.surfaceAlbedoFeedback

theorem radiative_forcing_coefficients_closed_from_evidence
    (R : RadiativeForcingCoefficients)
    (Ev : RadiativeForcingCoefficientsEvidence R) : RadiativeForcingCoefficientsClosed R := by
  exact And.intro Ev.co2ForcingCoefficientClosed
    (And.intro Ev.ch4ForcingCoefficientClosed
      (And.intro Ev.n2oForcingCoefficientClosed
        (And.intro Ev.aerosolDirectEffectClosed
          (And.intro Ev.aerosolIndirectEffectClosed
            (And.intro Ev.cloudFeedbackFactorClosed
              (And.intro Ev.waterVaporFeedbackClosed
                (And.intro Ev.lapseRateFeedbackClosed Ev.surfaceAlbedoFeedbackClosed)))))))

end ClimateScienceRadiativeForcingCanonicalLaneLean
end HautevilleHouse