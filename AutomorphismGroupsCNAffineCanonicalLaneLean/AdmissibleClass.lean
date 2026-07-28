import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsCNAffineCanonicalLaneLean

structure AffineAutomorphismAdmittedObject where
  ambientSpace : Type u
  topology : TopologicalSpace ambientSpace
  closedAffineSubvariety : Prop
  automorphismGroupAction : Prop
  orbitClosureRelation : Prop
  orbitClosed : Prop
  conclusion : orbitClosed

structure AdmissibleClass where
  object : AffineAutomorphismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AffineAutomorphismWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AutomorphismGroupsCNAffineCanonicalLaneLean
end HautevilleHouse