function fo_sol=avaliapop(pop)
    
n=size(pop,1);
for i=1:n
    fo_sol(i)=ackley(pop(i,:));
    %fo_sol(i)=rosen(pop(i,:));
end

