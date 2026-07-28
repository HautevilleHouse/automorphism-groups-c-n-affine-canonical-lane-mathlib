import HautevilleHouse.AutomorphismGroupsCNAffineCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AutomorphismGroupsCNAffineCanonicalLaneLean

def ConstrainedAffineAutomorphismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_affine_automorphism_endgame (A : AdmissibleClass) :
    ConstrainedAffineAutomorphismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AutomorphismGroupsCNAffineCanonicalLaneLean
end HautevilleHouse