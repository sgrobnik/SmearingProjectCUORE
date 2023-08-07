#include "RunAction.hh"

#include "G4Run.hh"
#include "G4RunManager.hh"
#include "g4root.hh"

#include "G4SystemOfUnits.hh"
#include "Randomize.hh"
#include "EcoMug.h"


RunAction::RunAction()
{
    G4AnalysisManager* man = G4AnalysisManager::Instance();

    man->CreateNtuple("Hits", "Hits");
    man->CreateNtupleIColumn("fEvent");
    man->CreateNtupleDColumn("EnergyDeposited");
    man->CreateNtupleDColumn("posX");
    man->CreateNtupleDColumn("posY");
    man->CreateNtupleDColumn("posZ");

    man->FinishNtuple(0);
}

RunAction::~RunAction()
{
    delete G4AnalysisManager::Instance();
}

void RunAction::BeginOfRunAction(const G4Run*)
{
    G4AnalysisManager *man = G4AnalysisManager::Instance();
    
    man->OpenFile("muons_rebuild.root");

}

void RunAction::EndOfRunAction(const G4Run*)
{
    G4AnalysisManager *man = G4AnalysisManager::Instance();
    man->Write();
    man->CloseFile();
    
}