% Definicao das tercas maiores
terca_maior(do,mi).
terca_maior(re,solb).
terca_maior(mi,lab).
terca_maior(fa,la).
terca_maior(sol,si).
terca_maior(la,reb).
terca_maior(si,mib).

% Definicao das tercas menores
terca_menor(do,mib).
terca_menor(re,fa).
terca_menor(mi,sol).
terca_menor(fa,lab).
terca_menor(sol,sib).
terca_menor(la,do).
terca_menor(si,re).

% Definicao das quintas justas
quinta_justa(do,sol).
quinta_justa(re,la).
quinta_justa(mi,si).
quinta_justa(fa,do).
quinta_justa(sol,re).
quinta_justa(la,mi).
quinta_justa(si,solb).

% Definicao de quintas aumentadas
quinta_aumentada(do,lab).
quinta_aumentada(re,sib).
quinta_aumentada(mi,do).
quinta_aumentada(fa,reb).
quinta_aumentada(sol,mib).
quinta_aumentada(la,fa).
quinta_aumentada(si,solb).

% Definicao de quintas diminutas
quinta_diminuta(do,solb).
quinta_diminuta(re,lab).
quinta_diminuta(mi,sib).
quinta_diminuta(fa,si).
quinta_diminuta(sol,reb).
quinta_diminuta(la,mib).
quinta_diminuta(si,fa).

% Conhecimento para saber as notas de um determinado acorde
cM(do,mi,sol).
cm(do,mib,sol).
caum(do,mi,lab).
cdim(do,mib,solb).

dbM(reb,fa,lab).
dbm(reb,mi,lab).
dbaum(reb,fa,la).
dbdim(reb,mi,la).

dM(re,solb,la).
dm(re,fa,la).
daum(re,solb,sib).
ddim(re,fa,lab).

ebM(mib,sol,sib).
ebm(mib,solb,sib).
ebaum(mib,sol,si).
ebdim(mib,solb,la).

eM(mi,lab,si).
em(mi,sol,si).
eaum(mi,lab,do).
edim(mi,sol,sib).

fM(fa,la,do).
fm(fa,lab,do).
faum(fa,la,reb).
fdim(fa,lab,si).

gbM(solb,sib,reb).
gbm(solb,la,reb).
gbaum(solb,sib,re).
gbdim(solb,la,do).

gM(sol,si,re).
gm(sol,sib,re).
gaum(sol,si,mib).
gdim(sol,sib,reb).

abbM(lab,do,mib).
abm(lab,si,mib).
abaum(lab,do,mi).
abdim(lab,si,re).

aM(la,reb,mi).
am(la,do,mi).
aaum(la,reb,fa).
adim(la,do,mib).

bbM(sib,re,fa).
bbm(sib,reb,fa).
bbaum(sib,re,solb).
bbdim(sib,reb,mi).

bM(si,mib,solb).
bm(si,re,solb).
baum(si,mib,sol).
bdim(si,re,fa).


% Definicao de acordes maiores
acorde_maior(TONICA,TERCA,QUINTA):-
		terca_maior(TONICA,TERCA),
		quinta_justa(TONICA,QUINTA).

% Definicao de acordes menores
acorde_menor(TONICA,TERCA,QUINTA):-
		terca_menor(TONICA,TERCA),
		quinta_justa(TONICA,QUINTA).

