function pais = selecao(pop,fo_pos) 
%Sele��o de dois indiv�duos pais
%O primeiro � escolhido de uma popula��o elite
%O segundo � escolhido da popula��o completa

elite=0.2;

aleat=randi(ceil(length(fo_pos)*elite));
pais(1,:)=pop(fo_pos(aleat),:); 
random=randi(length(fo_pos)); 
while random==aleat 
    random=randi(length(fo_pos)); 
end
pais(2,:)=pop(fo_pos(random),:);

end

