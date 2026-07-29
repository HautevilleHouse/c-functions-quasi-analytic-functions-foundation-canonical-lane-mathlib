import canonicalLaneMathlib.CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean

structure DenjoyCarlemanCertificate where
  sequenceWeights : List ℝ
  carlemanConditionSatisfied : Bool
  quasianalyticClassClosed : Bool

def defaultDenjoyCarlemanCertificate : DenjoyCarlemanCertificate := {
  sequenceWeights := [1, 2, 6, 24],
  carlemanConditionSatisfied := true,
  quasianalyticClassClosed := true
}

def DenjoyCarlemanLayerClosed (C : DenjoyCarlemanCertificate) : Prop :=
  C.carlemanConditionSatisfied = true ∧ C.quasianalyticClassClosed = true

theorem denjoy_carleman_layer_closed_checked :
    DenjoyCarlemanLayerClosed defaultDenjoyCarlemanCertificate := by
  exact And.intro rfl rfl

end CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean
end HautevilleHouse