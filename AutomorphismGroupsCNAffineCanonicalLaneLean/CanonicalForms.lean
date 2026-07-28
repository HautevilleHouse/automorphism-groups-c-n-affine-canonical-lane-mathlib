import canonicalLaneMathlib.AdmissibleClass
import AutomorphismGroupsCNAffineCanonicalLaneLean.InvariantTheory

namespace HautevilleHouse
namespace AutomorphismGroupsCNAffineCanonicalLaneLean

structure CanonicalFormClassification (V : AffineVariety) (G : AutomorphismGroup V) where
  orbitSpace : Type u
  quotientMap : V.underlyingSet → orbitSpace
  invariantSeparatesOrbits : ∀ x y : V.underlyingSet, (quotientMap x = quotientMap y) ↔ ∃ g : G.elements, g.actionOnCoordinateRing = ???
  niceProperties : Prop

def AutomorphismClosure (V : AffineVariety) : Prop :=
  ∃ (G : AutomorphismGroup V), ∃ (C : CanonicalFormClassification V G), C.niceProperties

end AutomorphismGroupsCNAffineCanonicalLaneLean
end HautevilleHouse