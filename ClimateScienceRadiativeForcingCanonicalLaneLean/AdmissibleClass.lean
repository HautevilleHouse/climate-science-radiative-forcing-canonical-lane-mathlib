import HautevilleHouse.ClimateScienceRadiativeForcingCanonicalLaneLean.EnergyBalanceModel

namespace HautevilleHouse
namespace ClimateScienceRadiativeForcingCanonicalLaneLean

structure ClimateAdmittedObject where
  energyModel : EnergyBalanceModel
  milankovitch : MilankovitchCycles
  isotopic : IsotopicPaleothermometry
  dansgaardOeschger : DansgaardOeschgerEvent
  radiativeKernel : RadiativeForcingKernel
  conclusion : Prop

structure AdmissibleClass where
  object : ClimateAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (EnergyBalanceClosed A.object.energyModel) ∧ (MilankovitchClosed A.object.milankovitch) ∧ (IsotopicPaleothermometryClosed A.object.isotopic) ∧ (DansgaardOeschgerClosed A.object.dansgaardOeschger) ∧ (RadiativeForcingKernelClosed A.object.radiativeKernel)

end ClimateScienceRadiativeForcingCanonicalLaneLean
end HautevilleHouse