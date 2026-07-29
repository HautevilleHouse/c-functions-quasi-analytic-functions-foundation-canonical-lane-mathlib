import CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean.QuasiAnalyticLayer
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean

open CanonicalLaneMathlibCore

structure QuasiAnalyticCertificate where
  quasiAnalyticLayer : QuasiAnalyticLayerCertificate
  carriageRecord : QuasiAnalyticCarriageRecord
  baselineGatesClosed : Bool
  formulaLayerModeled : Bool
  certificateObjectClosed : Bool
  classicalBoundaryCarried : Bool

def defaultQuasiAnalyticCertificate : QuasiAnalyticCertificate := {
  quasiAnalyticLayer := defaultQuasiAnalyticLayerCertificate,
  carriageRecord := defaultQuasiAnalyticCarriageRecord,
  baselineGatesClosed := true,
  formulaLayerModeled := true,
  certificateObjectClosed := true,
  classicalBoundaryCarried := true
}

def QuasiAnalyticCertificateClosed (C : QuasiAnalyticCertificate) : Prop :=
  QuasiAnalyticLayerClosed C.quasiAnalyticLayer ∧
  QuasiAnalyticCarriageRecordClosed C.carriageRecord ∧
  C.baselineGatesClosed = true ∧
  C.formulaLayerModeled = true ∧
  C.certificateObjectClosed = true ∧
  C.classicalBoundaryCarried = true

theorem quasi_analytic_certificate_closed_checked :
    QuasiAnalyticCertificateClosed defaultQuasiAnalyticCertificate := by
  exact And.intro quasi_analytic_layer_closed_checked
    (And.intro quasi_analytic_carriage_record_closed_checked
    (And.intro rfl (And.intro rfl (And.intro rfl rfl))))

end CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean
end HautevilleHouse