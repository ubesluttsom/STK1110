forsikringskrav=read.table("https://www.uio.no/studier/emner/matnat/math/STK1110/data/forsikringskrav.txt")
x=forsikringskrav$V1

# OPPGAVE 1B og 1C

x.mom.forvent = log(mean(x)/sqrt((var(x)/mean(x)^2)+1))
x.mom.varians = log((var(x)/mean(x)^2)+1)
c(x.mom.forvent, x.mom.varians)

x.mle.forvent = sum(log(x))/length(x)
x.mle.varians = sum((log(x)-x.mle.forvent)^2)/length(x)
c(x.mle.forvent, x.mle.varians)

# Eksempelkjøring:
#
#   >
#   [1] 2.7386963 0.8902211
#   [1] 2.7822827 0.7657692
#
# Vi ser at forventingen til MLE er litt større enn ved momentestimatoren, og
# variansen til MLE er litt mindre.

# OPPGAVE 1E

c(2*x.mle.varians^2/length(x), x.mle.varians/length(x))

# OPPGAVE 1G

# Ikke-parametrisk bootstrap (kode tilpasset fra eksempel i forelsning) for å
# bestemme standardfeilen.
B = 1000
x.mle.forvent.star = x.mle.varians.star = rep(0,B)
for (b in 1:B)
{ 
  x.star = sample(x,length(x),replace=T)
  x.mle.forvent.star[b] = sum(log(x.star))/length(x)
  x.mle.varians.star[b] = sum((log(x.star)-x.mle.forvent.star[b])^2)/length(x)
}

c(mean(x.mle.forvent.star), mean(x.mle.varians.star)) # Snitt (saniy check)
c(sd(x.mle.forvent.star), sd(x.mle.varians.star))     # Standardfeil

# Eksempelkjøring:
#
#   >
#   [1] 2.7819802 0.7656257
#   [1] 0.01073693 0.01490560
#
