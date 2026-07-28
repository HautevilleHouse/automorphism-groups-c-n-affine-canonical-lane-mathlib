import canoncalLaneMathlib.AdmissibleClass
import AutomorphismGroupsCNAffineCanonicalLaneLean.ComplexAffineGroupPackage

namespace HautevilleHouse
namespace AutomorphismGroupsCNAffineCanonicalLaneLean

structure AutomorphismClassificationPackage {P : AffineAutomorphismPackage}
    {C : ComplexAffineGroupPackage P} where
  automorphismGroupType : Prop
  linearPartClassification : Prop
  translationPartClassification : Prop
  semidirectProductStructure : Prop
  classificationComplete : Prop

structure AutomorphismClassificationEvidence {P : AffineAutomorphismPackage}
    {C : ComplexAffineGroupPackage P}
    (Cl : AutomorphismClassificationPackage C) where
  linearPartClassificationClosed : Cl.linearPartClassification
  translationPartClassificationClosed : Cl.translationPartClassification
  semidirectProductStructureClosed : Cl.semidirectProductStructure
  classificationCompleteClosed : Cl.classificationComplete

def AutomorphismClassificationClosed {P : AffineAutomorphismPackage}
    {C : ComplexAffineGroupPackage P}
    (Cl : AutomorphismClassificationPackage C) : Prop :=
  Cl.linearPartClassification ∧ Cl.translationPartClassification ∧
  Cl.semidirectProductStructure ∧ Cl.classificationComplete

theorem automorphism_classification_closed_from_evidence
    {P : AffineAutomorphismPackage} {C : ComplexAffineGroupPackage P}
    (Cl : AutomorphismClassificationPackage C)
    (E : AutomorphismClassificationEvidence Cl) :
    AutomorphismClassificationClosed Cl := by
  exact And.intro E.linearPartClassificationClosed
    (And.intro E.translationPartClassificationClosed
      (And.intro E.semidirectProductStructureClosed E.classificationCompleteClosed))

end AutomorphismGroupsCNAffineCanonicalLaneLean
end HautevilleHouse