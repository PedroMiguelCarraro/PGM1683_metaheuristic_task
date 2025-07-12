function pop = gerapop(d,lb,ub,maxpop)

range=ub-lb;
for k=1:maxpop
    for i=1:d
        pop(k,i)=lb+rand*range;
    end
end
end