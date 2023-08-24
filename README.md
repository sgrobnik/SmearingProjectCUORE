# Modeling Scintillator Panel Resolution for CUORE Muon Veto
Din-Ammar Tolj (Maruyama Group @ Yale), Summer Project 2023

### Introduction
This repo contains Geant4 simulations that were used to model the gamma and muon background detection by a 25cm x 25cm x 2.54cm plastic scintillator panel 
(single module/"swirly" panel) and notebooks that were used to apply 'smearing' to the simulated data. This is a process of applying a transformation to the
simulated data so that its counts/bin histogram matches that of the experimental data taken in lab. Physically, the meaning of this is that the simulated data
does not account for the energy resolution of the panel, and so the function that is applied to transform the simulated data to match the lab data 
represents the energy resolution. This project attempts several methods of modeling this function, which are explained in `SemaringProject_MuonsAndGammaSim_Din_vz5.ipynb`. 
The statistical test used to evaluate the fit of the smeared data to the lab data is a Chi2 Test, and with the linearly modeled smearing the Chi2/NDF value is ~2. **Current
 status of the project is to attempt to improve the Chi2/NDF by modeling energy resolution as polynomial of 2nd degree.**

### Navigating the repository
* For a brief overview of the project, see [this presentation](https://docs.google.com/presentation/d/1yX_nHkvrQDuoWpnNvu5a61zfmghXQkxy/edit?usp=sharing&ouid=118292023489330812424&rtpof=true&sd=true) 
that I made for the Wright Lab Student Research Symposium (need to be signed into Yale email to view).
* Begin by reading the `SemaringProject_MuonsAndGammaSim_Din_vz5.ipynb` notebook. This is the main analysis notebook which also contains the explanations of the mathematics/physics 
used in the project.
* The `gamma_sim` and `muons_edited` directories contain the most recent versions of the Geant4 simulations that are used for analysis. These will need to be recompiled using
Cmake. Note that the `-build` folders contain important `.root` files that the simulations depend on. Back up these files if necessary.
* `gammas`, `muons`, and `muons_rebuild` are the original versions of the Geant4 simulations I got from Jorge before I reworked them for this project.
* The data for this project was too large to push to the repo. A copy is located on the Muons computer—or if needed, reach out to me and I can forward it to you from my Grace account.
* There are several additional Jupyter Notebooks in the main directory of this repo. Most of these were used as complements to the SmearingProject notebook. Note that notebooks with `vz0` in the filename are incomplete and should not be paid much attention.
Some are imported from the Muons computer and used for calibrating lab data (these do not have `vz` in the filename).

### To-do
* See issues: one of the Python scripts has an issue with the version of PyROOT on Grace. This should be fixed.
* Find a reliable algorithm for minimizing the Chi2 between lab and smeared simulated data, with smearing applied as a polynomial of 2nd deg. with floating coefficients.

### Acknowledgements
PIs: Reina Maruyama, Karsten Heeger

Thank you to Jorge Torres (jorge.torresespinosa@yale.edu) and Samantha Pagan (samantha.pagan@yale.edu) for mentoring me throughout this entire project and helping me out a lot along the way.











