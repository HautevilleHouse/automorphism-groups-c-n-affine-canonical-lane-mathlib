import AutomorphismGroupsCNAffineCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsCNAffineCanonicalLaneLean

structure ComplexAffineSpace where
  dimension : ℕ
  coordinateRing : Type u
  polynomialRing : Type v

structure AffineAdmittedObject where
  space : ComplexAffineSpace
  dimension : ℕ
  isAffineSpace : space.dimension = dimension
  conclusion : isAffineSpace

def AutomorphismWitnessClosed (O : AffineAdmittedObject) : Prop :=
  O.isAffineSpace

end AutomorphismGroupsCNAffineCanonicalLaneLean
end HautevilleHouse