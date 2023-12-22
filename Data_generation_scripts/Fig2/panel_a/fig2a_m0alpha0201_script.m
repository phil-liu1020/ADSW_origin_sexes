% fig 2a (m(0),alpha(0))=(2,0.1)
% initialising parameters

A=100; M=1; T=1; Cz=0.3; Cp=0; beta1=1; beta2=1; lambda21=0; lambda12=0; mu=0.0005; delta=0.005; NEVOL=5500; f0=0.002; m0=2; alpha0=0.1; 
switching_environments=0; return_genotypes=0; number_of_realisations=25; alphamax=1000;

cd ..
cd ..
cd ..

addpath(genpath('Simulation_Functions'))

cd Data_generation_scripts/Fig2/panel_a


[~,~,m,alpha]=Evolutionary_trajectories(number_of_realisations,m0,alpha0,A,M,T,Cz,Cp,beta1,beta2,lambda12,lambda21,mu,NEVOL,f0,delta,alphamax, switching_environments, return_genotypes );



cd ..
cd ..
cd ..

save('Data_files\Fig2\panel_a\m_201.mat','m');
save('Data_files\Fig2\panel_a\alpha_201.mat','alpha');
