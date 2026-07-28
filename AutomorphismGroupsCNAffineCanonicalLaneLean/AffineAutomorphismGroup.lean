import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphismGroupsCNAffineCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsCNAffineCanonicalLaneLean

structure AffineAutomorphismPackage where
  group : Type u
  groupMultiplication : group → group → group
  identityElement : group
  inverseMap : group → group
  groupAxioms : Prop
  actionOnAffineSpace : group → (ℂⁿ → ℂⁿ)
  actionIsAffine : Prop
  orbitOfPoint : ℂⁿ → Set ℂⁿ
  orbitClosed : Prop

def AffineAutomorphismClosed (G : AffineAutomorphismPackage) : Prop :=
  G.groupAxioms ∧ G.actionIsAffine ∧ G.orbitClosed

end AutomorphismGroupsCNAffineCanonicalLaneLean
end HautevilleHouse