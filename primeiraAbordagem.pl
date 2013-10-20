tercaMaior(do,mi).
tercaMaior(re,solb).
tercaMaior(mi,lab).
tercaMaior(fa,la).
tercaMaior(sol,si).
tercaMaior(la,reb).
tercaMaior(si,mib).

quintaJusta(do,sol).
quintaJusta(re,la).
quintaJusta(mi,si).
quintaJusta(fa,do).
quintaJusta(sol,re).
quintaJusta(la,mi).
quintaJusta(si,solb).

acorde_maior(TONICA,NOTA1,NOTA2):-
		tercaMaior(TONICA,NOTA1),
		quintaJusta(TONICA,NOTA2).
		


		
		
		
		

