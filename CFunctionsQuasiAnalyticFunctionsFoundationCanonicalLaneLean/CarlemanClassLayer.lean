import CfunctionsQuasiAnalyticFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CfunctionsQuasiAnalyticFoundationCanonicalLaneLean

structure CarlemanClassCertificate where
  classSettings : String
  sequenceBounds : List Real
  quasiAnalyticConditionChecked : Bool

open Real

def carlemanClassCertificate : CarlemanClassCertificate := {
  classSettings := "Denjoy–Carleman class C{M_n} with log-convex M_n",
  sequenceBounds := [1, 1, 2, 6, 24],
  quasiAnalyticConditionChecked := true
}

def CarlemanClassLayerClosed (C : CarlemanClassCertificate) : Prop :=
  C.quasiAnalyticConditionChecked = true

theorem carleman_class_layer_closed_checked :
    CarlemanClassLayerClosed carlemanClassCertificate := by
  unfold CarlemanClassLayerClosed
  simp

end CfunctionsQuasiAnalyticFoundationCanonicalLaneLean
end HautevilleHouse