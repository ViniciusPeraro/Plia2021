participantes(vinicius, masculino).
participantes(cristian, masculino).
participantes(arthur, masculino).
participantes(pedro, masculino).
participantes(higor, masculino).
participantes(henrique, masculino).
participantes(joao, masculino).

participantes(helena, feminino).
participantes(raquel, feminino).
participantes(camilla, feminino).
participantes(marcela, feminino).
participantes(leticia, feminino).

mens_atrasada(marcela).
mens_atrasada(helena).

evento(vinicius, marcela, protecao).
evento(cristian, camilla, protecao).
evento(arthur,helena, sem).
evento(pedro,raquel, sem).
evento(higor, leticia, sem).
evento(henrique, joao, sem).
evento(marcela, helena, sem).
evento(helena, cristian, com).

pai(M):- evento(M,F,sem),
         mens_atrasada(F),
         participantes(F,feminino),
         participantes(M,masculino).

pai(M):- evento(F,M,sem),
         mens_atrasada(F),
         participantes(F,feminino),
         participantes(M,masculino).

mae(F):- evento(M,F,sem),
         mens_atrasada(F),
         participantes(F,feminino),
         participantes(M,masculino).

mae(F):- evento(F,M,sem),
         mens_atrasada(F),
         participantes(F,feminino),
         participantes(M,masculino).
