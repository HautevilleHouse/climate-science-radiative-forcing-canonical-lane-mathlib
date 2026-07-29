import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRadiativeForcingCanonicalLaneLean

structure EnergyBalanceModelPackage where
  solarConstant : ℝ
  albedo : ℝ
  emissivity : ℝ
  temperature : ℝ
  energyBalanceEquation : Prop
  equilibriumTemperature : ℝ
  equilibriumComputed : energyBalanceEquation → (temperature = equilibriumTemperature)

structure EnergyBalanceModelEvidence (E : EnergyBalanceModelPackage) where
  energyBalanceEquationClosed : E.energyBalanceEquation
  equilibriumComputedClosed : E.equilibriumComputed E.energyBalanceEquationClosed

def EnergyBalanceModelClosed (E : EnergyBalanceModelPackage) : Prop :=
  E.energyBalanceEquation ∧ (E.temperature = E.equilibriumTemperature)

theorem energy_balance_model_closed_from_evidence (E : EnergyBalanceModelPackage)
    (Ev : EnergyBalanceModelEvidence E) : EnergyBalanceModelClosed E := by
  refine And.intro Ev.energyBalanceEquationClosed ?_
  exact Ev.equilibriumComputedClosed

end ClimateScienceRadiativeForcingCanonicalLaneLean
end HautevilleHouse