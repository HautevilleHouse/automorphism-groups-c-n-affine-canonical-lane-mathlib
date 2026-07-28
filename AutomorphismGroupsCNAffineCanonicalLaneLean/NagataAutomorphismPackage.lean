import AutomorphismGroupsCNAffineCanonicalLaneLean.TameAutomorphismPackage

namespace HautevilleHouse
namespace AutomorphismGroupsCNAffineCanonicalLaneLean

structure NagataAutomorphismPackage (n : ℕ) where
  nagataAutomorphism : PolynomialAutomorphism n
  isWild : Prop
  notTame : Prop
  nGeq3 : n ≥ 3

structure NagataAutomorphismEvidence {n : ℕ} (N : NagataAutomorphismPackage n) where
  isWildClosed : N.isWild
  notTameClosed : N.notTame
  nGeq3Closed : N.nGeq3

def NagataAutomorphismClosed {n : ℕ} (N : NagataAutomorphismPackage n) : Prop :=
  N.isWild ∧ N.notTame ∧ N.nGeq3

theorem nagata_automorphism_closed_from_evidence {n : ℕ} (N : NagataAutomorphismPackage n) (E : NagataAutomorphismEvidence N) : NagataAutomorphismClosed N := by
  exact And.intro E.isWildClosed (And.intro E.notTameClosed E.nGeq3Closed)

end AutomorphismGroupsCNAffineCanonicalLaneLean
end HautevilleHouse