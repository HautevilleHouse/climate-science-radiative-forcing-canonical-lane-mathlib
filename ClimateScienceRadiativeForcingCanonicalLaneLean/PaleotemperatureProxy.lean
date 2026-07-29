import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRadiativeForcingCanonicalLaneLean

structure PaleotemperatureProxyPackage where
  isotopeRatio : ℝ
  fractionationFactor : ℝ
  calibrated : Prop
  temperatureReconstructed : Prop

structure PaleotemperatureProxyEvidence (P : PaleotemperatureProxyPackage) where
  calibratedClosed : P.calibrated
  temperatureReconstructedClosed : P.temperatureReconstructed

def PaleotemperatureProxyClosed (P : PaleotemperatureProxyPackage) : Prop :=
  P.calibrated ∧ P.temperatureReconstructed

theorem paleotemperature_proxy_closed_from_evidence
    (P : PaleotemperatureProxyPackage) (E : PaleotemperatureProxyEvidence P) :
    PaleotemperatureProxyClosed P := by
  exact And.intro E.calibratedClosed E.temperatureReconstructedClosed

end ClimateScienceRadiativeForcingCanonicalLaneLean
end HautevilleHouse