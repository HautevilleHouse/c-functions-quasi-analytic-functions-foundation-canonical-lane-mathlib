import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean.QuasiAnalyticBridgeLemmas

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_quasi_analytic_closure (A : AdmissibleClass) :
    ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean
end HautevilleHouse