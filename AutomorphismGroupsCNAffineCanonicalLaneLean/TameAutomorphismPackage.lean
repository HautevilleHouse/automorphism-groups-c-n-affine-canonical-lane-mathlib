import AutomorphismGroupsCNAffineCanonicalLaneLean.ElementaryAutomorphismsPackage

namespace HautevilleHouse
namespace AutomorphismGroupsCNAffineCanonicalLaneLean

structure TameAutomorphismPackage (n : ℕ) where
  tameSet : Set (PolynomialAutomorphism n)
  generatedByElementary : Prop
  subgroupStructure : Prop

structure TameAutomorphismEvidence {n : ℕ} (T : TameAutomorphismPackage n) where
  generatedByElementaryClosed : T.generatedByElementary
  subgroupStructureClosed : T.subgroupStructure

def TameAutomorphismClosed {n : ℕ} (T : TameAutomorphismPackage n) : Prop :=
  T.generatedByElementary ∧ T.subgroupStructure

theorem tame_automorphism_closed_from_evidence {n : ℕ} (T : TameAutomorphismPackage n) (E : TameAutomorphismEvidence T) : TameAutomorphismClosed T := by
  exact And.intro E.generatedByElementaryClosed E.subgroupStructureClosed

end AutomorphismGroupsCNAffineCanonicalLaneLean
end HautevilleHouse