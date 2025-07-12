function pais = selecao(pop,fo_pos) 
%Seleção de dois indivíduos pais
%O primeiro é escolhido de uma população elite
%O segundo é escolhido da população completa

elite=0.2;

aleat=randi(ceil(length(fo_pos)*elite));
pais(1,:)=pop(fo_pos(aleat),:); 
random=randi(length(fo_pos)); 
while random==aleat 
    random=randi(length(fo_pos)); 
end
pais(2,:)=pop(fo_pos(random),:);

end

