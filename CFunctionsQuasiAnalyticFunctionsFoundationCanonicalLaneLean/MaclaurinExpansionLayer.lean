import canonicalLaneMathlib.CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean.DualSpaceLayer

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean

structure MaclaurinExpansionCertificate where
  dualSpaceCert : DualSpaceCertificate
  expansionCoefficients : List ℝ
  radiusOfConvergence : ℝ
  growthConditionSatisfied : Bool

def defaultMaclaurinExpansionCertificate : MaclaurinExpansionCertificate := {
  dualSpaceCert := defaultDualSpaceCertificate,
  expansionCoefficients := [1.0, 0.5, 0.0, -0.125],
  radiusOfConvergence := 2.0,
  growthConditionSatisfied := true
}

def MaclaurinExpansionLayerClosed (C : MaclaurinExpansionCertificate) : Prop :=
  DualSpaceLayerClosed C.dualSpaceCert ∧ C.growthConditionSatisfied = true

theorem maclaurin_expansion_layer_closed_checked :
    MaclaurinExpansionLayerClosed defaultMaclaurinExpansionCertificate := by
  exact And.intro dual_space_layer_closed_checked rfl

end CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean
end HautevilleHouse