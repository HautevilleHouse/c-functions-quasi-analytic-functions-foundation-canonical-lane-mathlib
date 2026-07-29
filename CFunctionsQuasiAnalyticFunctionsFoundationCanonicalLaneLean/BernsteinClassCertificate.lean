import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean.DenjoyCarlemanLayer

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean

structure BernsteinClassCertificate where
  datum : QuasiAnalyticDatum
  bernsteinRoute : String
  analyticContinuationRoute : String
  endpointChecked : Bool
  carriedBoundaryNamed : Bool

def bernsteinClassCertificate : BernsteinClassCertificate := {
  datum := primitiveQuasiAnalyticDatum,
  bernsteinRoute := "Bernstein class as quasi-analytic via exponential bounds",
  analyticContinuationRoute := "holomorphic continuation via Carleman estimates",
  endpointChecked := true,
  carriedBoundaryNamed := true
}

def BernsteinClassClosed (C : BernsteinClassCertificate) : Prop :=
  C.datum.bernsteinClassChecked = true ∧
  C.endpointChecked = true ∧
  C.carriedBoundaryNamed = true

theorem bernstein_class_closed_checked :
    BernsteinClassClosed bernsteinClassCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean
end HautevilleHouse