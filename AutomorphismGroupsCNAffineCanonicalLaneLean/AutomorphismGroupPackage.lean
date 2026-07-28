import AutomorphismGroupsCNAffineCanonicalLaneLean.AffineSpacePackage

namespace HautevilleHouse
namespace AutomorphismGroupsCNAffineCanonicalLaneLean

structure PolynomialAutomorphism (n : ℕ) where
  mapping : (ℂ^n) → (ℂ^n)
  polynomialComponents : ℕ
  invertible : Prop
  inversePolynomial : (ℂ^n) → (ℂ^n)
  compositionInverse : Prop

structure AutomorphismGroupPackage (n : ℕ) where
  automorphisms : Set (PolynomialAutomorphism n)
  groupStructure : Prop
  identityIncluded : Prop
  closedUnderComposition : Prop
  closedUnderInverse : Prop

structure AutomorphismGroupEvidence {n : ℕ} (G : AutomorphismGroupPackage n) where
  groupStructureClosed : G.groupStructure
  identityIncludedClosed : G.identityIncluded
  closedUnderCompositionClosed : G.closedUnderComposition
  closedUnderInverseClosed : G.closedUnderInverse

def AutomorphismGroupClosed {n : ℕ} (G : AutomorphismGroupPackage n) : Prop :=
  G.groupStructure ∧ G.identityIncluded ∧ G.closedUnderComposition ∧ G.closedUnderInverse

theorem automorphism_group_closed_from_evidence {n : ℕ} (G : AutomorphismGroupPackage n) (E : AutomorphismGroupEvidence G) : AutomorphismGroupClosed G := by
  exact And.intro E.groupStructureClosed (And.intro E.identityIncludedClosed (And.intro E.closedUnderCompositionClosed E.closedUnderInverseClosed))

end AutomorphismGroupsCNAffineCanonicalLaneLean
end HautevilleHouse