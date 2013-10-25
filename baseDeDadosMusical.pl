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

% Definicao de acordes maiores
acorde_maior(TONICA,TERCA,QUINTA):-
		terca_maior(TONICA,TERCA),
		quinta_justa(TONICA,QUINTA).
% acorde_maior(desconhecida,NOTA1,NOTA2).
% acorde_maior(TONICA,desconhecida,NOTA2).
% acorde_maior(TONICA,NOTA1,desconhecida).

% Definicao de acordes menores
acorde_menor(TONICA,TERCA,QUINTA):-
		terca_menor(TONICA,TERCA),
		quinta_justa(TONICA,QUINTA).
% acorde_menor(desconhecida,TERCA,QUINTA).
% acorde_menor(TONICA,desconhecida,QUINTA).
% acorde_menor(TONICA,TERCA,desconhecida).

% Definicao dos acordes em relacao as suas tercas maiores
acorde(do_Maior,terca_maior(do,mi)).
acorde(re_Maior,terca_maior(re,solb)).
acorde(mi_Maior,terca_maior(mi,lab)).
acorde(fa_Maior,terca_maior(fa,la)).
acorde(sol_Maior,terca_maior(sol,si)).
acorde(la_Maior,terca_maior(la,reb)).
acorde(si_Maior,terca_maior(si,mib)).

% Definicao dos acordes em relacao as suas tercas maiores
acorde(do_Menor,terca_menor(do,mib)).
acorde(re_Menor,terca_menor(re,fa)).
acorde(mi_Menor,terca_menor(mi,sol)).
acorde(fa_Menor,terca_menor(fa,lab)).
acorde(sol_Menor,terca_menor(sol,sib)).
acorde(la_Menor,terca_menor(la,do)).
acorde(si_Menor,terca_menor(si,re)).

% Relacao dos acordes maiores com tonica, terca e quinta
acordeMaior(ACORDE,TONICA,TERCA,QUINTA):-
		acorde(ACORDE,terca_maior(TONICA,TERCA)),
		quinta(TONICA,QUINTA).

% Relacao dos acordes menores com tonica, terca e quinta
acordeMenor(ACORDE,TONICA,TERCA,QUINTA):-
		acorde(ACORDE,terca_menor(TONICA,TERCA)),
		quinta(TONICA,QUINTA).


		







		
