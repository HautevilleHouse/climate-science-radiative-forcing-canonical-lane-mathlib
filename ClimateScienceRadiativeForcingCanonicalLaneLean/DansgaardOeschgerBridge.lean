import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRadiativeForcingCanonicalLaneLean

structure DansgaardOeschgerBridgePackage where
  rapidWarmingEvent : Prop
  northAtlanticOscillation : Prop
  oceanCirculationShift : Prop
  iceCoreSignalDetected : Prop
  greenlandRecordMatches : Prop

def DansgaardOeschgerBridgeClosed (D : DansgaardOeschgerBridgePackage) : Prop :=
  D.rapidWarmingEvent ∧ D.northAtlanticOscillation ∧
  D.oceanCirculationShift ∧ D.iceCoreSignalDetected ∧ D.greenlandRecordMatches

structure DansgaardOeschgerBridgeEvidence (D : DansgaardOeschgerBridgePackage) where
  rapidWarmingEventClosed : D.rapidWarmingEvent
  northAtlanticOscillationClosed : D.northAtlanticOscillation
  oceanCirculationShiftClosed : D.oceanCirculationShift
  iceCoreSignalDetectedClosed : D.iceCoreSignalDetected
  greenlandRecordMatchesClosed : D.greenlandRecordMatches

theorem dansgaard_oeschger_bridge_closed_from_evidence
    (D : DansgaardOeschgerBridgePackage)
    (Ev : DansgaardOeschgerBridgeEvidence D) : DansgaardOeschgerBridgeClosed D := by
  exact And.intro Ev.rapidWarmingEventClosed
    (And.intro Ev.northAtlanticOscillationClosed
      (And.intro Ev.oceanCirculationShiftClosed
        (And.intro Ev.iceCoreSignalDetectedClosed Ev.greenlandRecordMatchesClosed)))

end ClimateScienceRadiativeForcingCanonicalLaneLean
end HautevilleHouse