import AutomorphismGroupsCNAffineCanonicalLaneLean.AutomorphismGroupPackage

namespace HautevilleHouse
namespace AutomorphismGroupsCNAffineCanonicalLaneLean

inductive ElementaryType (n : ℕ) where
  | affineLinear : (ℂ^n) → (ℂ^n) → ElementaryType n
  | triangular : (ℕ → ℂ) → ElementaryType n

structure ElementaryAutomorphismsPackage (n : ℕ) where
  elementarySet : Set (PolynomialAutomorphism n)
  affineLinearsIncluded : Prop
  triangularsIncluded : Prop
  generatesAutomorphismGroup : Prop

structure ElementaryAutomorphismsEvidence {n : ℕ} (E : ElementaryAutomorphismsPackage n) where
  affineLinearsIncludedClosed : E.affineLinearsIncluded
  triangularsIncludedClosed : E.triangularsIncluded
  generatesAutomorphismGroupClosed : E.generatesAutomorphismGroup

def ElementaryAutomorphismsClosed {n : ℕ} (E : ElementaryAutomorphismsPackage n) : Prop :=
  E.affineLinearsIncluded ∧ E.triangularsIncluded ∧ E.generatesAutomorphismGroup

theorem elementary_automorphisms_closed_from_evidence {n : ℕ} (E : ElementaryAutomorphismsPackage n) (Ev : ElementaryAutomorphismsEvidence E) : ElementaryAutomorphismsClosed E := by
  exact And.intro Ev.affineLinearsIncludedClosed (And.intro Ev.triangularsIncludedClosed Ev.generatesAutomorphismGroupClosed)

end AutomorphismGroupsCNAffineCanonicalLaneLean
end HautevilleHouse