iq=read.table("https://www.uio.no/studier/emner/matnat/math/STK1110/data/exe7_01.txt", header=T)

# Oppgave a.
# Bruker gjennomsnitt som estimator, siden IQ er normalfordelt og dette gir
# minst varians.
sum(iq$IQ1)
mean(iq$IQ1)
hist(iq$IQ1)

# Oppgave b.
# Dette vil da bare være det samme som gjennomsnittet fra a.?
mean(iq$IQ1)

# Oppgave c.
# Beste estimator for variansen til en normalfordelt rv er S²
iq$IQ1-(mean(iq$IQ1))^2
sum(iq$IQ1-(mean(iq$IQ1))^2)/(length(iq$IQ1)-1)
