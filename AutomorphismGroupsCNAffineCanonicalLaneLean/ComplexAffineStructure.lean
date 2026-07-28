import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsCNAffineCanonicalLaneLean

structure ComplexAffineStructure (M : ComplexAffineManifold) where
  coordinateCharts : Set (M.carrier → ℂⁿ)
  transitionFunctionsAreAffine : Prop
  atlasCompatible : Prop
  complexStructureInduced : ComplexStructure M.carrier

def ComplexAffineStructureClosed {M : ComplexAffineManifold} (C : ComplexAffineStructure M) : Prop :=
  C.transitionFunctionsAreAffine ∧ C.atlasCompatible

theorem complex_affine_structure_closed_from_evidence {M : ComplexAffineManifold}
    (C : ComplexAffineStructure M) (E : C.transitionFunctionsAreAffine ∧ C.atlasCompatible) :
    ComplexAffineStructureClosed C := by
  exact E

end AutomorphismGroupsCNAffineCanonicalLaneLean
end HautevilleHouse