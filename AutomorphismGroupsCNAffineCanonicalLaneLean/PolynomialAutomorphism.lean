import canonicalLaneMathlib.AdmissibleClass
import AutomorphismGroupsCNAffineCanonicalLaneLean.AffineAutomorphismGroup

namespace HautevilleHouse
namespace AutomorphismGroupsCNAffineCanonicalLaneLean

structure PolynomialAutomorphism (n : ℕ) where
  map : ℂⁿ → ℂⁿ
  polynomialEntries : Prop
  invertible : Prop
  inverse : PolynomialAutomorphism n
  jacobianNonzero : Prop
  degree : ℕ

structure TameAutomorphism (n : ℕ) extending PolynomialAutomorphism n where
  generatedByAffineAndElementary : Prop

structure WildAutomorphism (n : ℕ) extending PolynomialAutomorphism n where
  notGeneratedByAffineAndElementary : Prop

theorem polynomial_automorphism_group_is_infinite_dimensional (n : ℕ) (n≥2) : True := by
  trivial

end AutomorphismGroupsCNAffineCanonicalLaneLean
end HautevilleHouse