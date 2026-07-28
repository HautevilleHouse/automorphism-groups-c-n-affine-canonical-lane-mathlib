import canonicalLaneMathlib.AdmissibleClass
import AutomorphismGroupsCNAffineCanonicalLaneLean.AutomorphismGroup

namespace HautevilleHouse
namespace AutomorphismGroupsCNAffineCanonicalLaneLean

structure Invariant (V : AffineVariety) (G : AutomorphismGroup V) where
  functionOnV : V.coordinateRing
  invariantUnderAction : ∀ (g : G.elements), g.actionOnCoordinateRing functionOnV = functionOnV

def InvariantRing (V : AffineVariety) (G : AutomorphismGroup V) : Type u := { f : V.coordinateRing // ∀ g : G.elements, g.actionOnCoordinateRing f = f }

def InvariantTheoryClosed (V : AffineVariety) (G : AutomorphismGroup V) : Prop :=
  InvariantRing V G ≠ ∅

end AutomorphismGroupsCNAffineCanonicalLaneLean
end HautevilleHouse