terca_maior(mi,do).
terca_maior(solb,re).
terca_maior(lab,mi).
terca_maior(la,fa).
terca_maior(si,sol).
terca_maior(reb,la).
terca_maior(mib,si).

terca_menor(mib,do).
terca_menor(fa,re).
terca_menor(sol,mi).
terca_menor(lab,fa).
terca_menor(sib,sol).
terca_menor(do,la).
terca_menor(re,si).

quinta(sol,do).
quinta(la,re).
quinta(sa,mi).
quinta(do,fa).
quinta(re,sol).
quinta(mi,la).
quinta(solb,si).

acorde_maior(TONICA,TERCA,QUINTA):-
		terca_maior(TERCA,TONICA),
		quinta(QUINTA,TONICA).

acorde_maior(desconhecida,NOTA1,NOTA2).
acorde_maior(TONICA,desconhecida,NOTA2).
acorde_maior(TONICA,NOTA1,desconhecida).

acorde_menor(TONICA,TERCA,QUINTA):-
		terca_menor(TERCA,TONICA),
		quinta(QUINTA,TONICA).

acorde_menor(desconhecida,TERCA,QUINTA).
acorde_menor(TONICA,desconhecida,QUINTA).
acorde_menor(TONICA,TERCA,desconhecida).

acorde(do_Maior,terca_maior(mi,do)).
acorde(re_Maior,terca_maior(solb,re)).
acorde(mi_Maior,terca_maior(lab,mi)).
acorde(fa_Maior,terca_maior(la,fa)).
acorde(sol_Maior,terca_maior(si,sol)).
acorde(la_Maior,terca_maior(reb,la)).
acorde(si_Maior,terca_maior(mib,si)).

acorde(do_Menor,terca_menor(mib,do)).
acorde(re_Menor,terca_menor(fa,re)).
acorde(mi_Menor,terca_menor(sol,mi)).
acorde(fa_Menor,terca_menor(lab,fa)).
acorde(sol_Menor,terca_menor(sib,sol)).
acorde(la_Menor,terca_menor(do,la)).
acorde(si_Menor,terca_menor(re,si)).

acordeMaior(ACORDE,TONICA,TERCA,QUINTA):-
		acorde(ACORDE,terca_maior(TERCA,TONICA)),
		quinta(QUINTA,TONICA).

acordeMenor(ACORDE,TONICA,TERCA,QUINTA):-
		acorde(ACORDE,terca_menor(TERCA,TONICA)),
		quinta(QUINTA,TONICA).


		







		