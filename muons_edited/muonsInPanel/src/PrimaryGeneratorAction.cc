//
// ********************************************************************
// * License and Disclaimer                                           *
// *                                                                  *
// * The  Geant4 software  is  copyright of the Copyright Holders  of *
// * the Geant4 Collaboration.  It is provided  under  the terms  and *
// * conditions of the Geant4 Software License,  included in the file *
// * LICENSE and available at  http://cern.ch/geant4/license .  These *
// * include a list of copyright holders.                             *
// *                                                                  *
// * Neither the authors of this software system, nor their employing *
// * institutes,nor the agencies providing financial support for this *
// * work  make  any representation or  warranty, express or implied, *
// * regarding  this  software system or assume any liability for its *
// * use.  Please see the license in the file  LICENSE  and URL above *
// * for the full disclaimer and the limitation of liability.         *
// *                                                                  *
// * This  code  implementation is the result of  the  scientific and *
// * technical work of the GEANT4 collaboration.                      *
// * By using,  copying,  modifying or  distributing the software (or *
// * any work based  on the software)  you  agree  to acknowledge its *
// * use  in  resulting  scientific  publications,  and indicate your *
// * acceptance of all terms of the Geant4 Software license.          *
// ********************************************************************
//
/// \file electromagnetic/TestEm18/src/PrimaryGeneratorAction.cc
/// \brief Implementation of the PrimaryGeneratorAction class
//
//
//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

#include "PrimaryGeneratorAction.hh"

#include "DetectorConstruction.hh"

#include "G4Event.hh"
#include "G4ParticleTable.hh"
#include "G4ParticleDefinition.hh"
#include "G4SystemOfUnits.hh"
#include "Randomize.hh"
#include <G4GeneralParticleSource.hh>
#include "EcoMug.h"
#include "EventAction.hh"
#include "G4ParticleGun.hh"

#include "RunAction.hh"
#include "HistoManager.hh"


//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

PrimaryGeneratorAction::PrimaryGeneratorAction(DetectorConstruction* det)
:G4VUserPrimaryGeneratorAction(),fParticleGun(0),fDetector(det), mu_plus(0), mu_minus(0)
{
  fMuonGen.SetUseHSphere();
  fMuonGen.SetHSphereRadius(30.);
  fMuonGen.SetHSphereCenterPosition({{0.,0.,0.}});
  // fMuonGen.SetHSphereHeight(4170*mm);
  fParticleGun  = new G4ParticleGun(1);
  G4ParticleDefinition* myParticle;

  mu_minus = G4ParticleTable::GetParticleTable()
            ->FindParticle("mu-");
  mu_plus = G4ParticleTable::GetParticleTable()
            ->FindParticle("mu+");
  // myParticle = G4ParticleTable::GetParticleTable()->FindParticle("mu-");
  fParticleGun->SetParticleDefinition(mu_plus);
  fParticleGun->SetParticleEnergy(1.*TeV);
  // fParticleGun->GetCurrentSource()->GetAngDist()->SetParticleMomentumDirection(G4ThreeVector(1.,0.,0.));
  // fParticleGun->GetCurrentSource()->GetPosDist()->SetCentreCoords(G4ThreeVector(-2,0,0));
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

PrimaryGeneratorAction::~PrimaryGeneratorAction()
{
  delete fParticleGun;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void PrimaryGeneratorAction::GeneratePrimaries(G4Event* anEvent)
{
  fMuonGen.Generate();
  std::array<double, 3> muon_pos = fMuonGen.GetGenerationPosition();
  double muon_ptot = fMuonGen.GetGenerationMomentum();
  double muon_theta = fMuonGen.GetGenerationTheta();
  double muon_phi = fMuonGen.GetGenerationPhi();
  G4AnalysisManager* analysisManager = G4AnalysisManager::Instance();

  analysisManager->FillH1( 14, muon_phi);
  analysisManager->FillH1( 15, cos(muon_theta));

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

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

