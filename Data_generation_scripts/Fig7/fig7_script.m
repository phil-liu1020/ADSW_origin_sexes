% fig7
% initialising parameters

number_of_realisations=25; m0=0.29; alpha0=[0.075,0.15,0.3]; A=100; M=10; T=0.1; Cz=0.35; Cp=0; beta1=3; beta2=0.01; lambda21=0.25; mu=0.0005; NEVOL=6000; f0=0.002; delta=0.01; alphamax=1000; switching_environments=1; return_genotypes=0;

MM=cell(3,1);Aalpha=cell(3,1);

% for the case where t2/t1=1.6

lambda12=0.4;

% for the case where t2/t1=1.8

lambda12=0.45;

% for the case where t2/t1=1.97

lambda12=0.4925;

% for the case where t2/t1=2.1

lambda12=0.525;

% for the case where t2/t1=2.2

lambda12=0.55;

% for the case where t2/t1=2.3

lambda12=0.575;

% for the case where t2/t1=2.4

lambda12=0.6;

% for the case where t2/t1=2.5

lambda12=0.625;


cd ..
cd ..

addpath('Simulation_Functions')

cd Data_generation_scripts/Fig7


for i=1:length(alpha0)

[~,~,m,alpha]=Evolutionary_trajectories(number_of_realisations,m0,alpha0(i),A,M,T,Cz,Cp,beta1,beta2,lambda12,lambda21,mu,NEVOL,f0,delta,alphamax, switching_environments, return_genotypes );

MM{i,1}=m; Aalpha{i,1}=alpha;
end

mean_alpha0_0075=mean(Aalpha{1,1});
mean_alpha0_0075_end=mean_alpha0_0075(end);

mean_alpha0_015=mean(Aalpha{2,1});
mean_alpha0_015_end=mean_alpha0_015(end);

mean_alpha0_03=mean(Aalpha{3,1});
mean_alpha0_03_end=mean_alpha0_03(end);

cd ..

cd ..

save('Data_files\Fig7\paper2a_fig7_t2_over_t1.mat','m','alpha');
save('Data_files\Fig7\mean_alpha0_0075_end.mat','mean_alpha0_0075_end');
save('Data_files\Fig7\mean_alpha0_015_end.mat','mean_alpha0_015_end');
save('Data_files\Fig7\mean_alpha0_03_end.mat','mean_alpha0_03_end');