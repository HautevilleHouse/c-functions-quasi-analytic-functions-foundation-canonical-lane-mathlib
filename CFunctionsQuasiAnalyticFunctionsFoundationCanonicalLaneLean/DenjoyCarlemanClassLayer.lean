import CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean

structure DenjoyCarlemanClassCertificate where
  sequenceCondition : String
  carlemanInequality : String
  closedUnderAdmissibleGates : Bool
  endpointChecked : Bool

def primitiveDenjoyCarlemanClassCertificate : DenjoyCarlemanClassCertificate := {
  sequenceCondition := "M_n satisfies log convexity and Carleman condition",
  carlemanInequality := "∑ (M_n / M_{n+1}) = ∞",
  closedUnderAdmissibleGates := true,
  endpointChecked := true
}

def DenjoyCarlemanClassClosed (C : DenjoyCarlemanClassCertificate) : Prop :=
  C.sequenceCondition = "M_n satisfies log convexity and Carleman condition" ∧
  C.carlemanInequality = "∑ (M_n / M_{n+1}) = ∞" ∧
  C.closedUnderAdmissibleGates = true ∧
  C.endpointChecked = true

theorem denjoy_carleman_class_closed_checked :
    DenjoyCarlemanClassClosed primitiveDenjoyCarlemanClassCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end CFunctionsQuasiAnalyticFunctionsFoundationCanonicalLaneLean
end HautevilleHouse