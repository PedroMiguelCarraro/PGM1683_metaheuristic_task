clear all
close all
clc

%Dimensão da instância
d=2;

%Domínio de Solução
%Ackley
lb=-32.768;
ub=32.768;

%Rosenbrock
% lb=-2.048;
% ub=2.048;

%Parâmetros SA
T0=100;
SAmax=1000;
Tf=1e-3;
alfa=0.90;
nreplica=50;


for k=1:nreplica
    %iter=0; %usado no histórico
    %Geração da solução inicial
    sol=gerasol(d,lb,ub);
    best=sol;
    %Avaliação da solução inicial
    fo_sol=avalia(sol);
    fo_best=fo_sol;
    %fo_hist(1,:)=[iter fo_best];
    
    %Início do SA    
    iterT=0;
    T=T0;
    while T > Tf
        while iterT < SAmax
            iterT=iterT+1;
            viz=geraviz(sol,lb,ub);
            fo_viz=avalia(viz);
            delta=fo_viz-fo_sol;
            if delta < 0
                sol=viz;
                fo_sol=fo_viz;
                if fo_sol < fo_best
                    best=sol;
                    fo_best=fo_sol;
                end
            else
                x=rand;
                if x < exp(-delta/T)
                    sol=viz;
                    fo_sol=fo_viz;
                end
            end
            %iter=iter+1;
            %fo_hist(iter+1,:)=[iter fo_best];
        end
        T=alfa*T;
        iterT=0;
    end    
    FO(k)=fo_best;
end
best
melhor=min(FO)
media=mean(FO)
desvio=std(FO)

% fo_best
% best
%plot(fo_hist(:,1),fo_hist(:,2),'r-','linewidth',2)
