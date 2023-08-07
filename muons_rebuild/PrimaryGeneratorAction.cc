#include "PrimaryGeneratorAction.hh"
#include "G4Event.hh"
#include "G4ParticleDefinition.hh"
#include "G4PhysicalConstants.hh"
#include "Randomize.hh"
#include "EcoMug.h"
#include "G4ParticleGun.hh"


#include <G4GeneralParticleSource.hh>

PrimaryGenerator::PrimaryGenerator()
:fParticleGun(0), mu_plus(0), mu_minus(0) 
{
    fMuonGen.SetUseCylinder();
    fMuonGen.SetCylinderRadius(2500*mm);
    fMuonGen.SetCylinderHeight(4170*mm);
    fParticleGun  = new G4ParticleGun();
    G4ParticleDefinition* myParticle;

    fParticleGun = new G4ParticleGun(1);
    mu_minus = G4ParticleTable::GetParticleTable()
            ->FindParticle("mu-");
    mu_plus = G4ParticleTable::GetParticleTable()
            ->FindParticle("mu+");
    
    // G4ParticleTable *particleTable = G4ParticleTable::GetParticleTable();
    // G4String particleName = "gamma";
    // G4ParticleDefinition *particle = particleTable->FindParticle(particleName);
    
    
    // fParticleGun->SetParticleDefinition(particle);
    // fParticleGun->GetCurrentSource()->GetPosDist()->SetCentreCoords(G4ThreeVector(0.,0.,1.3*cm));
    // fParticleGun->GetCurrentSource()->GetAngDist()->SetParticleMomentumDirection(G4ThreeVector(1.,0.,0.));
    // fParticleGun->GetCurrentSource()->GetEneDist()->SetMonoEnergy(2614*keV);
    
}

PrimaryGenerator::~PrimaryGenerator()
{
    delete fParticleGun;
}

void PrimaryGenerator::GeneratePrimaries(G4Event *anEvent)
{
  fMuonGen.Generate();
  std::array<double, 3> muon_pos = fMuonGen.GetGenerationPosition();
  double muon_ptot = fMuonGen.GetGenerationMomentum();
  double muon_theta = fMuonGen.GetGenerationTheta();
  double muon_phi = fMuonGen.GetGenerationPhi();
  fParticleGun->SetParticlePosition(G4ThreeVector(
   muon_pos[0]*mm,
   muon_pos[1]*mm,
   muon_pos[2]*mm
));

  fParticleGun->SetParticleMomentum(G4ParticleMomentum(
   muon_ptot*sin(muon_theta)*cos(muon_phi)*GeV,
   muon_ptot*sin(muon_theta)*sin(muon_phi)*GeV,
   muon_ptot*cos(muon_theta)*GeV
));

// fParticleGun->GetCurrentSource()->GetAngDist()->SetParticleMomentumDirection(G4ThreeVector(1.,0.,0.));


// charge
if (fMuonGen.GetCharge() < 0) {
  fParticleGun->SetParticleDefinition(mu_minus);
} else {
  fParticleGun->SetParticleDefinition(mu_plus);
}

  fParticleGun->GeneratePrimaryVertex(anEvent);
}
