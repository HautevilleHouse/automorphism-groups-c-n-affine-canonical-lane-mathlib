import canonicalLaneMathlib.AdmissibleClass
import AutomorphismGroupsCNAffineCanonicalLaneLean.AffineVariety

namespace HautevilleHouse
namespace AutomorphismGroupsCNAffineCanonicalLaneLean

structure AutomorphismGroup (V : AffineVariety) where
  elements : Type u
  composition : elements → elements → elements
  identity : elements
  inverse : elements → elements
  groupLaws : Group axioms
  actionOnCoordinateRing : elements → V.coordinateRing → V.coordinateRing
  actionIsAlgebraic : Prop

def AutomorphismGroupClosed (V : AffineVariety) : Prop :=
  ∃ (G : AutomorphismGroup V), And (groupLaws G) (actionIsAlgebraic G)

end AutomorphismGroupsCNAffineCanonicalLaneLean
end HautevilleHouse