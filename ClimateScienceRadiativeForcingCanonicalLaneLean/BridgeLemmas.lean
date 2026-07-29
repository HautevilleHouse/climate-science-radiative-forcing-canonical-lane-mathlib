import HautevilleHouse.ClimateScienceRadiativeForcingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRadiativeForcingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (EnergyBalanceClosed A.object.energyModel) ∧ (MilankovitchClosed A.object.milankovitch) ∧ (IsotopicPaleothermometryClosed A.object.isotopic) ∧ (DansgaardOeschgerClosed A.object.dansgaardOeschger) ∧ (RadiativeForcingKernelClosed A.object.radiativeKernel)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end ClimateScienceRadiativeForcingCanonicalLaneLean
end HautevilleHouse