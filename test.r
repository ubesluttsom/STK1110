3+2
sqrt(2)
x=c(1,2,3,4)
y=c(0.5,2,4,8)
x+y
y-x
y/x
y^x

x[2]
y[c(1,3)]

c=1:10
d=seq(2,20,2)
f=rep(1,10)

c
d
f

sum(x)
prod(x)
length(x)

x>y
x>=y
x!=y

volt=c(24.46, 25.61, 26.25, 26.66)
mean(volt)
median(volt)
mean(volt, trim=0.10)
sd(volt)

exam.scores=read.table("https://www.uio.no/studier/emner/matnat/math/STK1110/data/exam.scores.txt", header=T)

attach(exam.scores)

boxplot(final~group)

par(mfrow=c(2,1))
hist(final[group==1])
hist(final[group==2])
par(mfrow=c(1,1))
