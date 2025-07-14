clear all; close all; clc

% ###### Variaveis de Controle ######

% Escolha da Instancia
% Capitais Brasileiras = 1
% TSPLIB - pr226       = 2
% Default              = Capitais Brasileira
instance_type = 1;

% Numero de iteracoes ate encontrar o melhor vizinho
% Caso 1 = 500;
% Caso 2 = 2000;
SAmax = 2000;

% Numero maximo de simulacoes executadas
nreplica = 50;

%Parâmetros SA
T0=100;
Tf=1e-3;
alfa=0.90;


% ###### Programa e logicas ######

switch instance_type
   case 1
        % Capitais Brasileiras
        instance_file_name = 'instances\brasil27.txt';
        dist_matrix = load(instance_file_name);
   case 2
        % TSPLIB - pr226
        instance_file_name = 'instances\pr226.txt';
        dist_matrix = func_pre_process_distance_matrix(instance_file_name);
   otherwise
        % Capitais Brasileiras
        instance_file_name = 'instances\brasil27.txt';
        dist_matrix = load(instance_file_name);
end

for k=1:nreplica
    %iter=0; %usado no histórico
    %Geração da solução inicial
    sol=gerasol(dim,lb,ub);
    best=sol;
    %Avaliação da solução inicial
    fo_sol=avalia(sol,tipo_func);
    fo_best=fo_sol;
    %fo_hist(1,:)=[iter fo_best];
    
    %Início do SA    
    iterT=0;
    T=T0;
    while T > Tf
        while iterT < SAmax
            iterT=iterT+1;
            viz=geraviz(sol,lb,ub);
            fo_viz=avalia(viz,tipo_func);
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

format short g
best
melhor=min(FO)
media=mean(FO)
desvio=std(FO)
