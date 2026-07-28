import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsCNAffineCanonicalLaneLean

structure OrbitClassificationPackage (M : ComplexAffineManifold) where
  orbitTypes : Type
  orbitDecomposition : Set (Set M.carrier)
  eachOrbitIsClosed : Prop
  orbitStructureAffine : Prop

structure OrbitClassificationEvidence (M : ComplexAffineManifold) (O : OrbitClassificationPackage M) where
  eachOrbitIsClosedClosed : O.eachOrbitIsClosed
  orbitStructureAffineClosed : O.orbitStructureAffine

def OrbitClassificationClosed {M : ComplexAffineManifold} (O : OrbitClassificationPackage M) : Prop :=
  O.eachOrbitIsClosed ∧ O.orbitStructureAffine

theorem orbit_classification_closed_from_evidence {M : ComplexAffineManifold}
    (O : OrbitClassificationPackage M) (E : OrbitClassificationEvidence M O) :
    OrbitClassificationClosed O := by
  exact And.intro E.eachOrbitIsClosedClosed E.orbitStructureAffineClosed

end AutomorphismGroupsCNAffineCanonicalLaneLean
end HautevilleHouse