testdata2 = function(n1,n2) {
    subjA=c()
    subjB=c()
    x1A=c()
    x2A=c()
    f1A=c()
    f2A=c()
    for (i in 1:n1) {
        idA=rep(i,n2)
        idB=1:n2
        x1a=rep(round(rnorm(1,10,2),1),n2)
        x2a=rep(round(rnorm(1,20,1),1),n2)
        f1a=rep(rbinom(1,1,0.4),n2)
        f2a=rep(rbinom(1,2,0.5),n2)
        
        subjA=c(subjA,idA)
        subjB=c(subjB,idB)
        x1A=c(x1A,x1a)
        x2A=c(x2A,x2a)
        f1A=c(f1A,f1a)
        f2A=c(f2A,f2a)
    }
    f1A=factor(f1A)
    f2A=factor(f2A)
    return(data.frame(x1A,x2A,f1A,f2A,subjA,subjB))
}
