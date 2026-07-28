import canoncalLaneMathlib.AdmissibleClass
import AutomorphismGroupsCNAffineCanonicalLaneLean.AffineAutomorphismPackage

namespace HautevilleHouse
namespace AutomorphismGroupsCNAffineCanonicalLaneLean

structure ComplexAffineGroupPackage {P : AffineAutomorphismPackage} where
  baseField : Type u
  complexStructure : baseField ≃ ℂ
  dimension : ℕ
  affineGroupOverComplex : Type v
  groupIsLieGroup : Prop
  complexAnalyticStructure : Prop
  canonicalCoordinates : Prop

structure ComplexAffineGroupEvidence {P : AffineAutomorphismPackage}
    (C : ComplexAffineGroupPackage P) where
  groupIsLieGroupClosed : C.groupIsLieGroup
  complexAnalyticStructureClosed : C.complexAnalyticStructure
  canonicalCoordinatesClosed : C.canonicalCoordinates

def ComplexAffineGroupClosed {P : AffineAutomorphismPackage}
    (C : ComplexAffineGroupPackage P) : Prop :=
  C.groupIsLieGroup ∧ C.complexAnalyticStructure ∧ C.canonicalCoordinates

theorem complex_affine_group_closed_from_evidence
    {P : AffineAutomorphismPackage} (C : ComplexAffineGroupPackage P)
    (E : ComplexAffineGroupEvidence C) : ComplexAffineGroupClosed C := by
  exact And.intro E.groupIsLieGroupClosed
    (And.intro E.complexAnalyticStructureClosed E.canonicalCoordinatesClosed)

end AutomorphismGroupsCNAffineCanonicalLaneLean
end HautevilleHouse