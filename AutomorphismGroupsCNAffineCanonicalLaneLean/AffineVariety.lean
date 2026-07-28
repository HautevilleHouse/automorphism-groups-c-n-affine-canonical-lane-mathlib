import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsCNAffineCanonicalLaneLean

structure AffineVariety where
  underlyingSet : Type u
  topology : TopologicalSpace underlyingSet
  coordinateRing : Type v
  isAffine : Prop
  smooth : Prop

def AffineVarietyClosed (V : AffineVariety) : Prop :=
  V.isAffine ∧ V.smooth

end AutomorphismGroupsCNAffineCanonicalLaneLean
end HautevilleHouse