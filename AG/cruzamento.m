function filhos = cruzamento(pais) 

a=rand;

filhos(1,:)=a*pais(1,:)+(1-a)*pais(2,:); 
filhos(2,:)=(1-a)*pais(1,:)+a*pais(2,:); 

end

