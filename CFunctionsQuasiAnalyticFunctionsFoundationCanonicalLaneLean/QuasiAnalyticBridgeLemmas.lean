import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean.BernsteinClassCertificate

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  QuasiAnalyticDatumClosed primitiveQuasiAnalyticDatum

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact primitive_quasi_analytic_datum_closed

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean
end HautevilleHouse