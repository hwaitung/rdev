testdata1 = function(n) {
    r=rnorm(n)
    x1=round(runif(n,10,20),1)
    x2=round(rchisq(n,10))
    tmp1=rbinom(n,1,0.3)
    tmp2=rbinom(n,1,0.7)
    tmp3=rbinom(n,2,0.5)
    y=1+0.5*x1-0.8*x2+0.3*x1*x2+tmp1+tmp2+tmp3+tmp1*tmp3+tmp1*tmp3+r
    f1=rep("",n)
    f2=rep("",n)
    f3=rep("",n)
    f1[tmp1==0]="m"
    f1[tmp1==1]="f"
    f2[tmp2==0]="y"
    f2[tmp2==1]="n"
    f3[tmp3==0]="good"
    f3[tmp3==1]="average"
    f3[tmp3==2]="bad"
    f1=factor(f1,c("m","f"))
    f2=factor(f2,c("y","n"))
    f3=factor(f3,c("good","average","bad"))
    return(data.frame(y,x1,x2,f1,f2,f3))
}
   