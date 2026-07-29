import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRadiativeForcingCanonicalLaneLean

structure IsotopicPaleothermometryPackage where
  delta18O : ℝ
  deltaD : ℝ
  temperatureProxy : ℝ
  fractionationEquation : Prop
  temperatureCalibrated : Prop
  iceCoreArchive : Prop

structure IsotopicPaleothermometryEvidence (I : IsotopicPaleothermometryPackage) where
  fractionationEquationClosed : I.fractionationEquation
  temperatureCalibratedClosed : I.temperatureCalibrated
  iceCoreArchiveClosed : I.iceCoreArchive

def IsotopicPaleothermometryClosed (I : IsotopicPaleothermometryPackage) : Prop :=
  I.fractionationEquation ∧ I.temperatureCalibrated ∧ I.iceCoreArchive

theorem isotopic_paleothermometry_closed_from_evidence
    (I : IsotopicPaleothermometryPackage)
    (Ev : IsotopicPaleothermometryEvidence I) : IsotopicPaleothermometryClosed I := by
  exact And.intro Ev.fractionationEquationClosed
    (And.intro Ev.temperatureCalibratedClosed Ev.iceCoreArchiveClosed)

end ClimateScienceRadiativeForcingCanonicalLaneLean
end HautevilleHouse