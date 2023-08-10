#!/usr/bin/env python

import os
import sys
import numpy as np
import ctypes
from ctypes import *
from ROOT import *
import ROOT


def main():
    
    gROOT.Reset()
    gStyle.SetPalette(1)
    gStyle.SetOptStat("")
    gStyle.SetOptFit(0)
    
    gStyle.SetPadBottomMargin(0.12)
    gStyle.SetPadLeftMargin  (0.11)
    #gStyle.SetPadTopMargin   (0.02)
    gStyle.SetPadRightMargin (0.05)
    
    gStyle.SetTitleOffset(1.2,"x")
    gStyle.SetTitleOffset(1.0,"y")
    gStyle.SetTitleSize(0.045,"xy")
    gStyle.SetLabelSize(0.040,"xy")
    
    # copied same sim from
    # /home/mkauer/sandbox/bkgs_sims/mc_files/old/
    ch1=TChain("mcOutDir/crystal_1_1","")
    ch2=TChain("mcOutDir/crystal_1_1","")
    ch3=TChain("mcOutDir/crystal_1_1","")
    ch4=TChain("mcOutDir/crystal_1_1","")
    ch5=TChain("mcOutDir/crystal_1_1","")
    ch6=TChain("mcOutDir/crystal_1_1","")

    # these # of decays represent 1 week
    ch1.Add("sim/mcrun_120719_1313.root")  #3199 U238 crystal
    #ch2.Add("sim/mcrun_120719_1316.root")  #1044 Th232 crystal
    ch2.Add("sim/mcrun_120719_1309.root")  #15944 K40 crystal
    
    ch3.Add("sim/mcrun_120713_1456.root")  #108600 U238 PVB
    ch4.Add("sim/mcrun_120719_1317.root")  #283456 Th232 PVB
    #ch6.Add("sim/mcrun_120719_1311.root")  #598163 K40 PVB
    
    # ice doesn't matter, fuck it
    #ch1.Add("sim/mcrun_120719_1315.root")  #587107 U238 Ice
    #ch1.Add("sim/mcrun_120719_1318.root")  #76848 Th232 Ice
    #ch1.Add("sim/mcrun_120719_1312.root")  #587107 K40 Ice
    
    ch10=TChain("Tree0","")
    ch10.Add("data/class_processing/*.root")
    
    
    hmin = 0
    hmax = 1800
    R = 2
    bins = int((hmax-hmin)/R)
    
    h_dat = TH1F("h_dat", "DM-Ice17 November 2011 Data", bins, hmin, hmax)
    h_dat.Sumw2()
    #ch2.Draw(" 0.037 *(( (DM0_sum_75_atwd0-4.0) + (0.7646*(DM1_sum_75_atwd0-4.0)) ) / 2.0) >> h_dat")
    ch10.Draw(" 0.020092379*(DM0_sum_75_atwd0 + 0.7646*DM1_sum_75_atwd0) >> h_dat ")
    #ch2.Draw(" 0.019895794*(DM0_sum_75_atwd0 + 0.7646*DM1_sum_75_atwd0) >> h_dat ")
    #ch2.Draw(" 0.02*(DM0_sum_75_atwd0 + 0.7646*DM1_sum_75_atwd0) >> h_dat ")
    
    # using Box-Muller transform for energy resolution smearing 
    h_sim1 = TH1F("h_sim1","h_sim1",bins,hmin,hmax)
    #h_sim.Sumw2()
    ch1.SetAlias("rng","sin(2.*pi*rndm)*sqrt(-2.*log(rndm))")
    
    #ch1.SetAlias("sigma",".31183*exp(-EnergyDep/.0288868)-EnergyDep/271.206+.037713")
    ch1.SetAlias("sigma","0.435866*exp(-(EnergyDep+0)/0.0291485)-EnergyDep/205.408+0.0530099")
    
    #ch1.Draw("EnergyDep*1000. + (0.08735/2.)*EnergyDep*1000.*rng >> h_sim","EnergyDep > 0")
    #ch1.Draw("EnergyDep*1000. + sqrt(2.)*sigma*EnergyDep*1000.*rng >> h_sim","EnergyDep > 0")
    #ch1.Draw("EnergyDep*1000. + sqrt(3.14)*sigma*EnergyDep*1000.*rng >> h_sim","EnergyDep > 0")
    ch1.Draw("EnergyDep*1000. + sigma*EnergyDep*1000.*rng >> h_sim1","EnergyDep > 0")
    
    h_sim2 = TH1F("h_sim2","h_sim2",bins,hmin,hmax)
    ch2.SetAlias("rng","sin(2.*pi*rndm)*sqrt(-2.*log(rndm))")
    ch2.SetAlias("sigma","0.435866*exp(-(EnergyDep+0)/0.0291485)-EnergyDep/205.408+0.0530099")
    ch2.Draw("EnergyDep*1000. + sigma*EnergyDep*1000.*rng >> h_sim2","EnergyDep > 0")
    
    h_sim3 = TH1F("h_sim3","h_sim3",bins,hmin,hmax)
    ch3.SetAlias("rng","sin(2.*pi*rndm)*sqrt(-2.*log(rndm))")
    ch3.SetAlias("sigma","0.435866*exp(-(EnergyDep+0)/0.0291485)-EnergyDep/205.408+0.0530099")
    ch3.Draw("EnergyDep*1000. + sigma*EnergyDep*1000.*rng >> h_sim3","EnergyDep > 0")
    
    h_sim4 = TH1F("h_sim4","h_sim4",bins,hmin,hmax)
    ch4.SetAlias("rng","sin(2.*pi*rndm)*sqrt(-2.*log(rndm))")
    ch4.SetAlias("sigma","0.435866*exp(-(EnergyDep+0)/0.0291485)-EnergyDep/205.408+0.0530099")
    ch4.Draw("EnergyDep*1000. + sigma*EnergyDep*1000.*rng >> h_sim4","EnergyDep > 0")
    
    tot = TH1F("tot","tot",bins,hmin,hmax)
    
    
    # pre-scale the MC histos so the templates have similar error
    # this helps the fitter give same weight to all MC
    # so it's independant of MC statistics
    # but if statistics are too low, it won't work
    lx = int(200/R)
    ux = int(1400/R)
    dat_int = h_dat.Integral(lx,ux)
    int1 = h_sim1.Integral(lx,ux)
    h_sim1.Scale(dat_int/int1)
    h_sim1.Sumw2()
    int2 = h_sim2.Integral(lx,ux)
    h_sim2.Scale(dat_int/int2)
    #h_sim2.Scale(dat_int/int2 * 0.199) # try fixing this param
    h_sim2.Sumw2()
    int3 = h_sim3.Integral(lx,ux)
    h_sim3.Scale(dat_int/int3)
    h_sim3.Sumw2()
    int4 = h_sim4.Integral(lx,ux)
    h_sim4.Scale(dat_int/int4)
    h_sim4.Sumw2()
    
    
    mc = TObjArray(4)
    mc.Add(h_sim1)
    mc.Add(h_sim2)
    mc.Add(h_sim3)
    mc.Add(h_sim4)
    fit = TFractionFitter(h_dat, mc)
    fit.Constrain(0, 0.0, 10.0)
    fit.Constrain(1, 0.0, 10.0)
    fit.Constrain(2, 0.0, 10.0)
    #fit.Constrain(2, 1.0, 1.0) # try fixing this param
    fit.Constrain(3, 0.0, 10.0)
    fit.SetRangeX(lx,ux)
    status = fit.Fit() # do the fit!
    chi2 = round(fit.GetChisquare(), 1)
    ndf = fit.GetNDF()
    #print("Fit done with status ",status," Chi2=",chi2,"/",ndf)
    print('Fit chi2/ndf = {0}/{1} = {2}'.format(chi2, ndf, round(chi2/ndf, 2)))
    #TH1F* result = (TH1F*) fit.GetPlot()
    
    #h_sim1 = (TH1F*)fit.GetMCPrediction(0)
    #h_sim2 = (TH1F*)fit.GetMCPrediction(1)
    #h_sim3 = (TH1F*)fit.GetMCPrediction(2)

    
    ### TypeError: void TFractionFitter::GetResult(Int_t parm, Double_t& value, Double_t& error) =>
    ### could not convert argument 2 (use ROOT.Double for pass-by-ref of doubles)
    #value = ROOT.Double(0.0)
    #error = ROOT.Double(0.0)
    value = ctypes.c_double(0.0)
    error = ctypes.c_double(0.0)
    
    fit.GetResult(0, value, error)
    print("value0 = ",value.value," +/- ",error.value)
    h_sim1.Scale(value.value)
    
    fit.GetResult(1, value, error)
    print("value1 = ",value.value," +/- ",error.value)
    h_sim2.Scale(value.value)
    
    fit.GetResult(2, value, error)
    print("value2 = ",value.value," +/- ",error.value)
    h_sim3.Scale(value.value)
    
    fit.GetResult(3, value, error)
    print("value3 = ",value.value," +/- ",error.value)
    h_sim4.Scale(value.value)
    
    
    tot.Add(h_sim1)
    tot.Add(h_sim2)
    tot.Add(h_sim3)
    tot.Add(h_sim4)
    
    c1 = TCanvas("c1","c1",0,0,800,500)   
    c1.cd()
    c1.SetLogy()
    h_dat.SetXTitle("Energy keV")
    h_dat.SetYTitle("counts / keV")
    h_dat.SetMarkerColor(kBlack)
    h_dat.SetLineColor(kBlack)
    h_dat.SetLineWidth(2)
    h_dat.Draw()
    
    tot.SetMarkerColor(kGray+1)
    tot.SetLineColor(kGray+1)
    tot.SetLineWidth(2)
    tot.Draw("same")
    
    
    h_sim1.SetMarkerColor(kRed+1)
    h_sim1.SetLineColor(kRed+1)
    h_sim1.SetLineWidth(1)
    h_sim1.Draw("same")
    
    h_sim2.SetMarkerColor(kBlue+1)
    h_sim2.SetLineColor(kBlue+1)
    h_sim2.SetLineWidth(1)
    h_sim2.Draw("same")
    
    h_sim3.SetMarkerColor(kGreen+1)
    h_sim3.SetLineColor(kGreen+1)
    h_sim3.SetLineWidth(1)
    h_sim3.Draw("same")
    
    h_sim4.SetMarkerColor(kYellow+1)
    h_sim4.SetLineColor(kYellow+1)
    h_sim4.SetLineWidth(1)
    h_sim4.Draw("same")
    
    
    leg = TLegend(0.75,0.65,0.95,0.9)
    leg.SetFillColor(0)
    leg.AddEntry(h_dat,"data","lp")
    leg.AddEntry(tot,"MC fit total","lp")
    leg.AddEntry(h_sim1,"Xtal U238","lp")
    leg.AddEntry(h_sim2,"Xtal K40","lp")
    leg.AddEntry(h_sim3,"PV U238","lp")
    leg.AddEntry(h_sim4,"PV Th232","lp")
    #leg.AddEntry(h_enr,"  raw MC","lp")
    leg.Draw()
    
    
    #h_dat.SetAxisRange(1,200,"x")
    h_dat.SetAxisRange(1,1000*R,"y")
    c1.Update()
    c1.Print("pytest-fitting.png")
    
    
    # add in residual plot
    resid = TH1F("resid","pyROOT - resid",bins,hmin,hmax)
    c2 = TCanvas("c2","c2",0,0,800,500)
    resid.Add(h_dat,tot,1,-1)
    resid.SetMarkerColor(kBlack)
    resid.SetLineColor(kBlack)
    resid.SetLineWidth(1)
    resid.SetXTitle("Energy keV")
    resid.SetYTitle("counts / keV")
    resid.SetAxisRange(-600,600,"y")
    resid.Draw()
    
    zero = TLine(hmin,0,hmax,0)
    zero.SetLineColor(kRed)
    zero.SetLineWidth(2)
    zero.Draw()
    
    leg2 = TLegend(0.65,0.80,0.95,0.9)
    leg2.SetFillColor(0)
    leg2.AddEntry(resid,"data-MC residual","lp")
    #leg2.AddEntry(resid,'chi2 / ndf = '+chi2+' / '+ndf,'lp')
    leg2.Draw()
    
    c2.Print("pytest-fitting-resid.png")

    
    # see plots hack
    #raw_input("[Enter] to quit\n")
    input("[Enter] to quit\n")
    
    
if __name__ == "__main__":
    main()
