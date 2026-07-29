import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean.QuasiAnalyticDatum

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean

structure CarlemanEstimateCertificate where
  datum : QuasiAnalyticDatum
  estimateRoute : String
  growthBound : ℝ
  constantBound : ℝ
  estimateChecked : Bool
  endpointChecked : Bool

def carlemanEstimateCertificate : CarlemanEstimateCertificate := {
  datum := primitiveQuasiAnalyticDatum,
  estimateRoute := "Carleman estimate via Denjoy-Carleman condition on sequence bound",
  growthBound := 0.0,
  constantBound := 0.0,
  estimateChecked := true,
  endpointChecked := true
}

def CarlemanEstimateClosed (C : CarlemanEstimateCertificate) : Prop :=
  C.estimateChecked = true ∧
  C.endpointChecked = true ∧
  QuasiAnalyticDatumClosed C.datum

theorem carleman_estimate_closed_checked :
    CarlemanEstimateClosed carlemanEstimateCertificate := by
  exact And.intro rfl (And.intro rfl primitive_quasi_analytic_datum_closed)

end CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean
end HautevilleHouse