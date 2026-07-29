import canonicalLaneMathlib.AdmissibleClass
import ClimateScienceRadiativeForcingCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace ClimateScienceRadiativeForcingCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  climateConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "climate-science-radiative-forcing-canonical-lane",
  theoremName := "Climate Science Radiative Forcing",
  theoremObject := "Forcing-response closure with energy balance and paleoclimate constraints",
  classicalBoundary := "Radiative forcing endpoint: Milankovitch cycles, Dansgaard-Oeschger events, isotopic paleothermometry, energy balance models",
  climateConstrainedStatement := "climate-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := "climate_constrained",
  carriedRemainder := "classical source boundary carried by theoremBoundaryOpen and sourceTheoremBoundary"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "climate-science-radiative-forcing-canonical-lane" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "climate_constrained" := by
  rfl

end ClimateScienceRadiativeForcingCanonicalLaneLean
end HautevilleHouse