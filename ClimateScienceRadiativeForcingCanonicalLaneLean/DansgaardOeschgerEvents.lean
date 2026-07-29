import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRadiativeForcingCanonicalLaneLean

structure DansgaardOeschgerEvents where
  rapidWarmingPhase : Prop
  gradualCoolingPhase : Prop
  periodicityDetected : Prop
  northAtlanticOrigin : Prop
  amocLink : Prop
  oxygenIsotopeSignature : Prop

structure DansgaardOeschgerEventsEvidence (D : DansgaardOeschgerEvents) where
  rapidWarmingPhaseClosed : D.rapidWarmingPhase
  gradualCoolingPhaseClosed : D.gradualCoolingPhase
  periodicityDetectedClosed : D.periodicityDetected
  northAtlanticOriginClosed : D.northAtlanticOrigin
  amocLinkClosed : D.amocLink
  oxygenIsotopeSignatureClosed : D.oxygenIsotopeSignature

def DansgaardOeschgerEventsClosed (D : DansgaardOeschgerEvents) : Prop :=
  D.rapidWarmingPhase ∧ D.gradualCoolingPhase ∧ D.periodicityDetected ∧
  D.northAtlanticOrigin ∧ D.amocLink ∧ D.oxygenIsotopeSignature

theorem dansgaard_oeschger_events_closed_from_evidence (D : DansgaardOeschgerEvents)
    (Ev : DansgaardOeschgerEventsEvidence D) : DansgaardOeschgerEventsClosed D := by
  exact And.intro Ev.rapidWarmingPhaseClosed
    (And.intro Ev.gradualCoolingPhaseClosed
      (And.intro Ev.periodicityDetectedClosed
        (And.intro Ev.northAtlanticOriginClosed
          (And.intro Ev.amocLinkClosed Ev.oxygenIsotopeSignatureClosed))))

end ClimateScienceRadiativeForcingCanonicalLaneLean
end HautevilleHouse