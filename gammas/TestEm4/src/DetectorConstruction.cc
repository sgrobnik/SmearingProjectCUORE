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
/// \file electromagnetic/TestEm4/src/DetectorConstruction.cc
/// \brief Implementation of the DetectorConstruction class
//
//
//

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

#include "DetectorConstruction.hh"

#include "G4Material.hh"
#include "G4Tubs.hh"
#include "G4Box.hh"

#include "G4LogicalVolume.hh"
#include "G4PVPlacement.hh"
#include "G4SystemOfUnits.hh"

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

DetectorConstruction::DetectorConstruction()
:G4VUserDetectorConstruction()
{}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

DetectorConstruction::~DetectorConstruction()
{}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4VPhysicalVolume* DetectorConstruction::Construct()
{
  //
  // define a material from its elements.   case 1: chemical molecule
  //
  G4double a, z;
  G4double density;
  G4int ncomponents, natoms;

  G4Element* C = new G4Element("Carbon"  ,"C" , z= 6., a= 12.01*g/mole);
  G4Element* F = new G4Element("Fluorine","N" , z= 9., a= 18.99*g/mole);
  G4Element* H  = new G4Element("Hydrogen" ,"H" , z= 1., a=   1.01*g/mole);
  G4double fractionmass;

  // G4Material* C6F6 =
  // new G4Material("FluorCarbonate", density= 1.61*g/cm3, ncomponents=2);
  // C6F6->AddElement(C, natoms=6);
  // C6F6->AddElement(F, natoms=6);

  G4Material* Panel =
  new G4Material("Panel", density= 1.023*g/cm3, ncomponents=2);
  Panel->AddElement(H, fractionmass=8.*perCent);
  Panel->AddElement(C, fractionmass=92.*perCent);

  G4cout << Panel << G4endl;

  //
  // Container
  //
  // G4double Rmin=0., Rmax=5*cm, deltaZ= 5*cm, Phimin=0., deltaPhi=360*degree;
  G4double  fBoxSize = 25*cm;

  // G4Tubs*
  // solidWorld = new G4Tubs("Panel",                        //its name
  //                  Rmin,Rmax,deltaZ,Phimin,deltaPhi);        //its size

  G4Box*
  solidWorld = new G4Box("Container",                              //its name
                    fBoxSize/2,fBoxSize/2,1.25*cm);        //its dimensions
  G4LogicalVolume*
  logicWorld = new G4LogicalVolume(solidWorld,                //its solid
                                   Panel,                //its material
                                   "Panel");                //its name
  G4VPhysicalVolume*
  physiWorld = new G4PVPlacement(0,                        //no rotation
                                   G4ThreeVector(),        //at (0,0,0)
                                 logicWorld,                //its logical volume
                                 "Panel",                //its name
                                 0,                        //its mother  volume
                                 false,                        //no boolean operation
                                 0);                        //copy number

  //
  //always return the physical World
  //
  return physiWorld;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
