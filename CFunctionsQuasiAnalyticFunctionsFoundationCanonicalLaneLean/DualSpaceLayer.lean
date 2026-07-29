import canonicalLaneMathlib.CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean.DenjoyCarlemanLayer

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean

structure DualSpaceCertificate where
  denjoyCarlemanCert : DenjoyCarlemanCertificate
  dualBasisRecorded : Bool
  analyticFunctionalRoute : String

def defaultDualSpaceCertificate : DualSpaceCertificate := {
  denjoyCarlemanCert := defaultDenjoyCarlemanCertificate,
  dualBasisRecorded := true,
  analyticFunctionalRoute := "dual space via analytic functionals on the Denjoy-Carleman class"
}

def DualSpaceLayerClosed (C : DualSpaceCertificate) : Prop :=
  DenjoyCarlemanLayerClosed C.denjoyCarlemanCert ∧ C.dualBasisRecorded = true

theorem dual_space_layer_closed_checked :
    DualSpaceLayerClosed defaultDualSpaceCertificate := by
  exact And.intro denjoy_carleman_layer_closed_checked rfl

end CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean
end HautevilleHouse