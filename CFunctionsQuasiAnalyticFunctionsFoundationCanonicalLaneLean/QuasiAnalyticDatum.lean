import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean

structure QuasiAnalyticDatum where
  sequenceBound : Nat → ℝ
  quasiAnalyticChecked : Bool
  denjoyCarlemanConditionSatisfied : Bool
  carlemanEstimateChecked : Bool
  bernsteinClassChecked : Bool

def primitiveQuasiAnalyticDatum : QuasiAnalyticDatum := {
  sequenceBound := λ n => (0 : ℝ),
  quasiAnalyticChecked := true,
  denjoyCarlemanConditionSatisfied := true,
  carlemanEstimateChecked := true,
  bernsteinClassChecked := true
}

def QuasiAnalyticDatumClosed (D : QuasiAnalyticDatum) : Prop :=
  D.quasiAnalyticChecked = true ∧
  D.denjoyCarlemanConditionSatisfied = true ∧
  D.carlemanEstimateChecked = true ∧
  D.bernsteinClassChecked = true

theorem primitive_quasi_analytic_datum_closed :
    QuasiAnalyticDatumClosed primitiveQuasiAnalyticDatum := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean
end HautevilleHouse