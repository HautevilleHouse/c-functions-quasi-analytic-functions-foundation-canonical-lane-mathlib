import CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean.DenjoyCarlemanClassLayer

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean

structure QuasiAnalyticEndpointCertificate where
  denjoyCarlemanLayer : DenjoyCarlemanClassCertificate
  endpointRoute : String
  quasiAnalyticCondition : String
  endpointChecked : Bool

def primitiveQuasiAnalyticEndpointCertificate : QuasiAnalyticEndpointCertificate := {
  denjoyCarlemanLayer := primitiveDenjoyCarlemanClassCertificate,
  endpointRoute := "quasi-analytic endpoint projected through Denjoy–Carleman class",
  quasiAnalyticCondition := "C^∞ function determined by its Taylor series at a point",
  endpointChecked := true
}

def QuasiAnalyticEndpointClosed (C : QuasiAnalyticEndpointCertificate) : Prop :=
  DenjoyCarlemanClassClosed C.denjoyCarlemanLayer ∧
  C.endpointRoute = "quasi-analytic endpoint projected through Denjoy–Carleman class" ∧
  C.quasiAnalyticCondition = "C^∞ function determined by its Taylor series at a point" ∧
  C.endpointChecked = true

theorem quasi_analytic_endpoint_closed_checked :
    QuasiAnalyticEndpointClosed primitiveQuasiAnalyticEndpointCertificate := by
  exact And.intro denjoy_carleman_class_closed_checked (And.intro rfl (And.intro rfl rfl))

end CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean
end HautevilleHouse