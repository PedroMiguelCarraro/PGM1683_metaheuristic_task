function filho_mutado = mutacao(filho,lb,ub)

filho_mutado=filho;
n=length(filho);
range=ub-lb;
pos=randi(n);
filho_mutado(pos)=lb+rand*range;


end
