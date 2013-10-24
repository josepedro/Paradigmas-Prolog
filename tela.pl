:- use_module(library(pce)).

alo_mundo :-
		new(D, window('minha primeira janela')),
		send(D,size,size(250,100)),
		new(T,text('Q q isso lelek')),
		send(D,display, T , point(80,40)),
		send(D,open).
		
		homem(pedro).

