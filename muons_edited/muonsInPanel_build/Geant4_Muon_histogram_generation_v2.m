%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Geant4-MATLAB muon generator file (Version 1).
%   
%   This MATLAB script has been developed to facilitate the generation of the 
%   muon energy and angular histograms use with the Geant4 macro file. 
%   The script generates a look-up table that contains the sampled muon 
%   angles (actual and corrected for solid angle effect) and energies 
%   as well as histograms for muon angular and energy distributions.
%
%   This muon generation is based on a methodology that combines the 
%   Smith & Duller (1959) phenomenological model and statistical sampling 
%   algorithms. The inverse transform provides a means to generate samples from the 
%   muon angular distribution (corrected for solid angle effect). The Acceptance-Rejection 
%   method is used to generate samples from the actual muon angular
%   distribution (i.e., cosine squared). The Acceptance-Rejection 
%   method is also used to provide the energy component. Final output provides 
%   the user defined histograms for use in the Geant4 macro file.
%
%   For non-standard energy and angular distributions Geant4 requires the 
%   utilization of the General Particle Source module which via the 
%   G4GeneralParticleSource class allows specification of user defined 
%   angular and energy distributions. The user defined histograms are 
%   specified in macro files using the following commands:
%
%   1.	/gps/particle mu+ 	      (specify particle type)
%   2.	/gps/ang/type user 	      (user defined histogram)
%   3.	/gps/hist/type theta 	  (zenith angle histogram)
%   4.	/gps/hist/point Bt Wt 	  (angular histogram values)
%   5.	/gps/ene/type Arb 	      (user defined histogram)
%   6.	/gps/hist/type arb 	      (point-wise energy spectrum)
%   7.	/gps/hist/point Eh Hh 	  (energy spectrum values)
%   8.	/gps/hist/inter Lin 	  (interpolation scheme: Linear)
%   9.	/run/beamOn 1000	      (number of particles)
%
%   where a short explanation of each command appears in parentheses. 
%   The histograms represent differential functions and must be included 
%   one bin at a time. Angular histogram is described using the bin upper 
%   boundary and the area of the bin. Energy spectrum (point-wise) is 
%   described using the bin center and the height of the bin. The first 
%   value of each histogram must be the lower boundary of the bin and a 
%   dummy value that is not used.
%
%   Instructions: Run the file. On the command line set the minimum and 
%   maximum muon energy and the minimum and maximum zenith angle. 
%   Output:
%
%   1. The output "Muon_table" matrix contains the angles and energies 
%      of the sampled muons
%   2. The "User_defined_hist_energy" matrix contains the point-wise energy
%      (MeV) spectrum for the Geant4 macro file. Just copy paste to your Geant4 
%      macro file.
%   3. The "User_defined_hist_angle" matrix contains the zenith
%      angle (radians) histogram for the Geant4 macro file. Just copy paste to your 
%      Geant4 macro file.
%   4. The "User_defined_hist_angle_corrected" matrix contains the zenith
%      angle (radians) - corrected for the solid angle effect- histogram for 
%      the Geant4 macro file. Just copy paste to your Geant4 macro file.
%
%   This file is free for use. More details, examples and validation results 
%   can be found on the journal papers:
%   
%   S. Chatzidakis, S. Chrysikopoulou, L.H. Tsoukalas (2015)
%   "Developing a cosmic ray muon sampling capability for muon tomography
%   and monitoring applications", Nuclear Instruments and Methods in 
%   Phyics Research Section A, Vol. 804, pp. 33-42.
%
%   S. Chatzidakis, L.H. Tsoukalas (2015)
%   "A Geant4-MATLAB muon generator for Monte-Carlo simulations", 
%   URL: https://engineering.purdue.edu/~aisl/Stylianos_Publications.html
%
%   Users are kindly requested to cite the above journal papers in their
%   publications. Please comment. Thank you!
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Set minimum and maximum muon energy (Validated range 1-100 GeV)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Emin=input('Enter minimum muon energy (GeV):');
Emax=input('Enter maximum muon energy (GeV):');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Set minimum and maximum muon zenith angle (Range 0-90o)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Theta_min=input('Enter minimum muon zenith angle (degrees):');
Theta_max=input('Enter maximum muon zenith angle (degrees):');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Set the desirable number of muons to be sampled
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
N=100000;                        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%    Phenomenological model constants
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Alpha=0.002382;              % constant A
lambda=120;                  % absorption mean free path 120 g/cm2
kappa=2.645;                 % exponent (-)
bp=0.771; jp=148.16;         % correction factor (-); factor (GeV)
alpha = 0.0025;              % muon energy loss in GeV/g/cm2
rho = 0.76;                  % fraction of pion energy that is transferred to muon
y0=1000;                     % atmoshperic depth g/cm2
bm=0.8;Bm=1.041231831;       % correction factor (-); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Inverse trasform and Accept-Reject method
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Inverse trasform to sample muon zenith angle
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
theta1=Theta_min*pi/180;theta2=Theta_max*pi/180;
for i=1:N
tm=theta1+(theta2-theta1).*rand();
tm1=2*tm/(pi);
theta_corr(i)=acos((1-tm1)^(1/3));                                % select muon angle (in radians) - corrected for solid angle effect - using inverse transform
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%    Step 2
%    Accept-Reject method to sample muon zenith angle 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Calculate maximum value of angular distribution
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tm2=[theta1:0.01:theta2];                                % zenith angle lower and upper limits
theta3=cos(tm2).^2;                                      % angular distribution modelled as cosine squared
C4=max(theta3);                                          % maximum value of angular distribution
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Actual angular muon spectrum
%   (i.e., cosine squared)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for k=1:1000000                       
    Theta_m1=(theta1+(theta2-theta1)*rand());            % select a random energy from uniform U(Theta_min,Theta_max)
    u=rand();                                            % select a random number from uniform U(0,1)
    f1=cos(Theta_m1)^2;                                  % calculate random variable X             
    f2=C4;                                            
    f3=f1/f2;                                            % f(y)/g(y)=f1/f2 where g(y)>f(y)
    if u<=f3                                             % if u<=f(y)/g(y) then set X=Y
        Muon_Theta(i)=Theta_m1;                          % accept zenith angle
        break
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%    Step 3
%    Accept-Reject method to sample muon energy 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Calculate maximum value of phenomenological model
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Em=[Emin:0.1:Emax];                                                 % energy lower and upper limits
Ep=(Em+alpha*y0*(sec(Muon_Theta(i))-0.1))*(1/rho);
Pm=(0.1*cos(Muon_Theta(i)).*(1-(alpha*(y0*sec(Muon_Theta(i))-100)./(rho.*Ep)))).^(Bm./((rho.*Ep+100*alpha)*cos(Muon_Theta(i))));
f=Alpha.*Pm.*(Ep.^(-kappa))*lambda*bp*jp./(Ep.*cos(Muon_Theta(i))+bp*jp);
C6=max(f);                                                           % maximum value of phenomenological model
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Muon energy sampling 
%  (for the previously selected muon angle Muon_Theta)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for m=1:1000000                       
    Em1=(Emin+(Emax-Emin)*rand());                           % select a random energy from uniform U(Emin,Emax)
    u=rand();                                                % select a random number from uniform U(0,1)
    Ep1=(Em1+alpha*y0*(sec(Muon_Theta(i))-0.1))*(1/rho);     % calculate pion energy
    Pm1=(0.1*cos(Muon_Theta(i))*(1-(alpha*(y0*sec(Muon_Theta(i))-100)/(rho*Ep1))))^(Bm/((rho*Ep1+100*alpha)*cos(Muon_Theta(i))));   % calculate probability
    f4=Alpha*Pm1*(Ep1^(-kappa))*lambda*bp*jp/(Ep1*cos(Muon_Theta(i))+bp*jp);    % calculate intensity based on sampled energy and angle             
    f5=C6;                                            
    f6=f4/f5;                                                 % f(y)/g(y)=f1/f2 where g(y)>f(y)
    if u<=f6                                                  % if u<=f(y)/g(y) then set X=Y
        Muon_Energy(i)=Em1;                                   % accept energy
        break
    end
end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Create a lookup table: 1st column is sampled muon angle (radians), 
%   second column is sampled muon angle -corrected for solid angle effect (radians)
%   third colum is sampled muon energy (GeV)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Muon_table=[Muon_Theta;theta_corr;Muon_Energy]';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Set bin size and produce histograms for plotting
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bin1=2*(numel(Muon_Energy)^(1/3));      % bin size for energies selected according to Rice rule
[C,x2]=hist(Muon_Energy,bin1);
C1=C/trapz(x2,C);                       % normalization of the histogram
bin8=2*(numel(theta_corr)^(1/3));       % bin size for angles (corrected for solid angle effect) selected according to Rice rule
[C8,x8]=hist(theta_corr,bin8);
C9=C8/trapz(x8,C8);                     % normalzation of the histogram
bin10=2*(numel(Muon_Theta)^(1/3));      % bin size for angles selected according to Rice rule
[C10,x10]=hist(Muon_Theta,bin10);
C11=C10/trapz(x10,C10);                 % normalzation of the histogram
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Calculate bin size and bin area for angular histogram
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bin_size=(max(Muon_Theta)-min(Muon_Theta))/numel(x10);         % bin size            
C11a(1)=0;                                                     % dummy value
C11a(2:(numel(x10)+1))=bin_size.*C11;                          % area of bin
x11(1)=min(Muon_Theta);                                        % first bin lower boundary
x11(2:(numel(x10)+1))=x10+(bin_size/2);                        % bin upper boundary
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Calculate bin size and bin area for angular histogram (corrected for
%   solid angle effect)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bin_size=(max(theta_corr)-min(theta_corr))/numel(x8);           % bin size            
C9a(1)=0;                                                       % dummy value
C9a(2:(numel(x8)+1))=bin_size.*C9;                              % area of bin
x9(1)=min(theta_corr);                                          % first bin lower boundary
x9(2:(numel(x8)+1))=x8+(bin_size/2);                            % bin upper boundary
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Calculate bin center and height for point-wise energy spectrum
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x3(1)=x2(1);                                             % first bin value
x3(2:(numel(x2)+1))=x2;                                  % bin centers
C2(1)=0;                                                 % dummy value
C2(2:(numel(x2)+1))=C1;                                  % bin height
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Generate commands for use in Geant4 macro files
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
C3=repmat(['/gps/hist/point'], numel(x3),1);
C9b=repmat(['/gps/hist/point'], numel(x9),1);
C11b=repmat(['/gps/hist/point'], numel(x11),1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Generate energy point wise spectrum (in MeV)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
User_defined_hist_energy=[char(C3) blanks(numel(x3'))' num2str(x3'.*1000) blanks(numel(C2'))' num2str(C2')];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Generate zenith angle histogram (in radians)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
User_defined_hist_angle=[char(C11b) blanks(numel(x11'))' num2str(x11') blanks(numel(C11a'))' num2str(C11a')];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Generate zenith angle histogram (in radians) - corrected for solid
%   angle effect
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
User_defined_hist_angle_corrected=[char(C9b) blanks(numel(x9'))' num2str(x9') blanks(numel(C9a'))' num2str(C9a')];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Plot histograms
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)                       
plot(x8,C9,'o')                         % plot distribution of zenith angles - corrected for the solid angle effect.
xlabel('Zenith angle - Corrected for solid angle effect (rad)')
ylabel('Arbitrary units')
figure(2)                       
plot(x10,C11,'o')                         % plot distribution of zenith angles.
xlabel('Zenith angle (rad)')
ylabel('Arbitrary units')
figure(3)
loglog(x2,C1,'o')                         % plot distribution of muon energies
xlabel('Energy (GeV)')
ylabel('Arbitrary units')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Clear workspace
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clearvars -except Muon_table User_defined_hist_energy User_defined_hist_angle User_defined_hist_angle_corrected    % clear workspace
