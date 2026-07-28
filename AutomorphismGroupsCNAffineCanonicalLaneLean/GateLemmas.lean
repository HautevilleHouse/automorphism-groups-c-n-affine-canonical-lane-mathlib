import canonicalLaneMathlib.AdmissibleClass
import AutomorphismGroupsCNAffineCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AutomorphismGroupsCNAffineCanonicalLaneLean

def gateClosed (A : AutomorphismAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AutomorphismAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end AutomorphismGroupsCNAffineCanonicalLaneLean
end HautevilleHouse