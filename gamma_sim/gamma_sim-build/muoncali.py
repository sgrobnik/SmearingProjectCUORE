import ROOT
import sys
import math
import numpy
from dt5202 import dt5202_crunch
from dt5202oldDAQ import dt5202_crunch as dt5202_crunch_oldDAQ
ped = 50 #pedestal correction

# Import Langaus fit curve for PyROOT.
from langaus import LanGausFit
from root_numpy import array2hist, hist2array, fill_hist

def getadcpermev(data, x, y):
	c1 = ROOT.TCanvas('c1','')
	hpx = ROOT.TH1D('Landau-Gauss Fit','pls',500,0,9000)
	fill_hist(hpx, numpy.array(data['data']['low_gain']))
	hpx.Draw()
	ROOT.gPad.SetLogy()
	ROOT.gStyle.SetOptFit(2)
	fit = LanGausFit()
	func = fit.fit(hpx,fitrange=(x,y))
	hpx.Draw()
	func.Draw("same")
	c1.Draw()
	MPV = func.GetParameter(1) # this corresponds to the most probable value of the distribution
	print("MPV:", MPV)
	ADCperMEV = MPV/5.0
	print("ADC/MeV:", ADCperMEV)			
