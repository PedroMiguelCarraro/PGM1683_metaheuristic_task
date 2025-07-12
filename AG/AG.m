clear all
close all
clc

%Fun��o a ser otimizada
%Ackley
lb=-32.768;
ub=32.768;

%Rosenbrock
%lb=-2.048;
%ub=2.048;

%Dimens�o do problema
d=20;

%Par�metros do AG
npop=100; %N�mero par 
maxgera=1000;
pc=0.9; pm=0.1;

%N�mero de replica��es do AG
nreplica=50;

for k=1:nreplica
    
    %Gera��o Popula��o Inicial
    pop=gerapop(d,lb,ub,npop);
    
    %Avalia��o das Solu��es
    fo=avaliapop(pop);
    
    %Ordena��o da FO
    [fo_ord,fo_pos]=sort(fo);
    
    %Armazenamento do hist�rico da melhor FO
    gera=1;
    %hist(gera,1)=gera;
    %hist(gera,2)=fo_ord(1);
    
    %Impress�o da melhor solu��o
    %fprintf('Iter %g: %8.4e\n',1,fo_ord(1)')
    
    %La�o de evolu��o do gen�tico
    while (gera<=maxgera)
        
        %In�cio constru��o da Nova Popula��o - Indiv�duos Elite
        nova_pop(1,:)=pop(fo_pos(1),:);
        nova_pop(2,:)=pop(fo_pos(2),:);
        
        %Constru��o do restante da popula��o
        for j=3:2:npop
            
            %Operador de Sele��o
            pais=selecao(pop,fo_pos);
            
            %Operador de Cruzamento
            if (rand<pc)
                filhos=cruzamento(pais);
            else
                filhos=pais;
            end
            
            %Operador de Muta��o
            for i=1:2 %varre todos os filhos
                if (rand<pm)
                    filhos(i,:)=mutacao(filhos(i,:),lb,ub);
                end
            end
              
            %Inser��o dos filhos gerados
            nova_pop(j:j+1,:)=filhos;           
            
        end
        
        %Avalia��o Nova Popula��o
        pop=nova_pop;
        fo=avaliapop(pop);
        
        %Ordena��o da FO
        [fo_ord,fo_pos]=sort(fo);
        
        %Armazenamento da melhor FO ao longo das gera��es
        gera=gera+1;
        %hist(gera,1)=gera;
        %hist(gera,2)=fo_ord(1);
        
        %Impress�o da melhor solu��o
        %fprintf('Iter %g: %8.4e\n',gera,fo_ord(1)')      

    end
    
    FO(k)=fo_ord(1);
    
    
end

%Apresenta��o do resultado final (replica=1)
% plot(hist(:,1),hist(:,2),'.-r','linewidth',3)
% fprintf('Melhor Solu��o\n')
% s_star = pop(fo_pos(1),:)
% fo_star = fo_ord(1)

%Medidas de desempenho
melhor=min(FO)
pior=max(FO)
media=mean(FO)
desvio=std(FO)
