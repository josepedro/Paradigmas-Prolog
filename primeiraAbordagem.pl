terca(mi,do).
terca(solb,re).
terca(lab,mi).
terca(la,fa).
terca(si,sol).
terca(reb,la).
terca(mib,si).

quinta(sol,do).
quinta(la,re).
quinta(si,mi).
quinta(do,fa).
quinta(re,sol).
quinta(mi,la).
quinta(solb,si).

acorde_maior(TONICA,NOTA1,NOTA2):-
		terca(NOTA1,TONICA),
		quinta(NOTA2,TONICA).
		


		
		
		
		

