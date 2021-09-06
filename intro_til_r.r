#------------------------------------------------
# Du kan bruke R som en kalkulator. For eksempel:
#------------------------------------------------
3+2
3-2
3*2
3/2
3^2
sqrt(2)
exp(2)
log(2) 


#-----------------------------------------------------------------
# Du kan definere skalare variable og regne med dem. For eksempel
#----------------------------------------------------------------
a=2         # alternativt a<-2
b=3
a+b
a*b
a^b 


#----------------------------------------------------------
# Du kan definere vektorer og regne med dem.  For eksempel:
#----------------------------------------------------------
x=c(1,2,3,4)
y=c(0.5,2,4,8)
x+y
y-x
y/x
y^x

# Merk at R regner elementvis (i motsetning av hva som er tilfellet for MATLAB).
# R kan ogsaa utfoere vektor- og matrisealgebra, men det vil vi ha lite bruk for i STK1110.


#-----------------------------------------------------------
# Du kan "trekke ut" ett eller flere elementer av en vektor:
#-----------------------------------------------------------
x[2]
y[c(1,3)]


#------------------------------------------------------------------
#R kan lage spesielle sekvenser (lagret som vektorer). For eksempel:
#------------------------------------------------------------------
c=1:10                # heltallene fra 1 til 10
d=seq(2,20,2)         # partallene fra 2 til 20
f=rep(1,10)           # tallet 1 gjentatt 10 ganger


#------------------------------------------------------------------
# R har en rekke funksjoner som opererer paa vektorer. For eksempel:
#------------------------------------------------------------------
sum(x)
prod(x)
length(x)


#---------------------------------------------------------------------
# Vi kan sammenligne elementene i en vektor (elementvis). For eksempel:
#---------------------------------------------------------------------
x>y            # stoerre enn
x>=y           # lik eller stoerre enn
x==y           # lik    
x!=y           # ikke lik


#-----------------------------
# Enkel beskrivende statistikk
#-----------------------------

# Lagrer dataene i eksempel 7.2 i Devore & Berk i en vektor:
volt=c(24.46, 25.61, 26.25, 26.42, 26.66, 27.15, 27.31, 27.54, 27.74, 27.94, 27.98, 28.04, 28.28, 28.49, 28.50, 28.87, 29.11, 29.13, 29.50, 30.88)

# Beregner gjennomsnitt, median, 10% trimmet gjennomsnitt og standardavvik:
mean(volt)
median(volt)
mean(volt,trim=0.10)
sd(volt)


#------------------------------
#Innlesing av data og datarammer
#------------------------------

# Vi kan lese data fra en file (eventuelt paa web) inn i en dataramme.
# For eksempel kan vi lese inn dataene i eksempel 10.4 i Devore & Berk med kommandoen
exam.scores=read.table("http://www.uio.no/studier/emner/matnat/math/STK1110/h19/exam.scores.txt", header=T)

#Se paa dataene og skriv ut et sammendrag av dem:
exam.scores         # final er eksamensresultat, mens group angir gruppe (1=kontroll, 2=eksperimentell)

# Du kan adressere variablene i en dataramme ved f.eks
exam.scores$final      #merk at det ikke holde aa skrive final

#Du kan tilknytte datarammen
attach(exam.scores)

#Naa er det nok aa skrive final


#-----------------------------------------------------
# R kan lage en rekke nyttige plott. Et par eksempler:
#-----------------------------------------------------
hist(volt)                          # histogram (jfr. Devore & Berk side 13-18)
boxplot(volt)                       # boksplott (jfr. Devore & Berk sidene 38-40)
boxplot(final~group)                # boksplott for flere grupper (jfr. Devore & Berk sidene 40-41)


#-----------------------------
# Flere plott paa samme figur:
#-----------------------------
par(mfrow=c(2,1))                    # to plott under hverandre
hist(final[group==1])                # histogram for de to gruppene
hist(final[group==2])         
par(mfrow=c(1,1))                    # stiller tilbake igjen til ett plott


#----------------------------------------------------------------------------
# R har et godt utbygget hjelpesystem som beskriver kommandoene. For eksempel:
#----------------------------------------------------------------------------
help(hist)


#------------------------------------
# Utlogging og lagring av "workspace"
#------------------------------------
# Du avslutter R med kommandoen
q()
#Du blir spurt  "Save workspace image?". Hvis du svarer ja paa dette, tar R vare paa alle variable for neste R-sesjon