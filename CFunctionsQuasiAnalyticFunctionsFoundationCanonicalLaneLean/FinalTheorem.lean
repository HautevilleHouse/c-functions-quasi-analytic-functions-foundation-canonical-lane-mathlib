import canonicalLaneMathlib.CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean

def ConstrainedQuasiAnalyticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ClassicalSourceBoundaryCarried

def NativeClosureTheorem (A : AdmissibleClass) : Prop :=
  ConstrainedQuasiAnalyticClosure A

def ConditionalRouteClosure (A : AdmissibleClass) : Prop :=
  ConstrainedQuasiAnalyticClosure A ∧ ClassicalSourceBoundaryCarried

theorem constrained_quasi_analytic_endgame (A : AdmissibleClass) :
    ConstrainedQuasiAnalyticClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) classical_source_boundary_carried_checked)

theorem native_closure_theorem_checked (A : AdmissibleClass) :
    NativeClosureTheorem A := by
  exact constrained_quasi_analytic_endgame A

theorem conditional_route_closure_checked (A : AdmissibleClass) :
    ConditionalRouteClosure A := by
  exact And.intro (constrained_quasi_analytic_endgame A) classical_source_boundary_carried_checked

theorem conditional_route_source_boundary_carried (A : AdmissibleClass) :
    ConditionalRouteClosure A -> ClassicalSourceBoundaryCarried := by
  intro h
  exact h.2

end CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean
end HautevilleHouse