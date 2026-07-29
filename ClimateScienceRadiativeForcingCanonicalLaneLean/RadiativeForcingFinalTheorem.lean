import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClimateScienceRadiativeForcingCanonicalLaneLean.EnergyBalanceModel
import HautevilleHouse.ClimateScienceRadiativeForcingCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ClimateScienceRadiativeForcingCanonicalLaneLean

def ConstrainedRadiativeForcingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_radiative_forcing_endgame (A : AdmissibleClass) : ConstrainedRadiativeForcingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClimateScienceRadiativeForcingCanonicalLaneLean
end HautevilleHouse