import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRadiativeForcingCanonicalLaneLean

structure ClimateSystem where
  planetRadius : ℝ
  solarConstant : ℝ
  albedo : ℝ
  emissivity : ℝ
  greenhouseFactor : ℝ

structure EffectiveRadiativeForcing (sys : ClimateSystem) where
  incomingSolarRadiation : ℝ
  outgoingLongwaveRadiation : ℝ
  netForcing : ℝ

end ClimateScienceRadiativeForcingCanonicalLaneLean
end HautevilleHouse