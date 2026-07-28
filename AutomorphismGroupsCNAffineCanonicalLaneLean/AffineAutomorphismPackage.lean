import canoncalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsCNAffineCanonicalLaneLean

structure AffineAutomorphismPackage where
  affineSpace : Type u
  vectorSpace : Type v
  affineGroup : Type w
  groupOperation : affineGroup → affineGroup → affineGroup
  identityElement : affineGroup
  inverseElement : affineGroup → affineGroup
  actsOnAffineSpace : affineGroup → affineSpace → affineSpace
  preservesAffineStructure : Prop
  automorphismGroupClosed : Prop

structure AffineAutomorphismEvidence (P : AffineAutomorphismPackage) where
  preservesAffineStructureClosed : P.preservesAffineStructure
  automorphismGroupClosedClosed : P.automorphismGroupClosed

def AffineAutomorphismClosed (P : AffineAutomorphismPackage) : Prop :=
  P.preservesAffineStructure ∧ P.automorphismGroupClosed

theorem affine_automorphism_closed_from_evidence
    (P : AffineAutomorphismPackage) (E : AffineAutomorphismEvidence P) :
    AffineAutomorphismClosed P := by
  exact And.intro E.preservesAffineStructureClosed E.automorphismGroupClosedClosed

end AutomorphismGroupsCNAffineCanonicalLaneLean
end HautevilleHouse