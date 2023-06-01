pai(gerontius, belladonna).
pai(gerontius, mirabella).
pai(marmadoc, gorbadoc).
pai(bungo, bilbo).
pai(gorbadoc, primula).
pai(fosco, drogo).
pai(drogo, frodo).

mae(adamanta, belladonna).
mae(adamanta, mirabella).
mae(belladonna, bilbo).
mae(adaldrida, gorbadoc).
mae(mirabella, primula).
mae(ruby, drogo).
mae(primula, frodo).

neto(X, Y) :- pai(W, X), (pai(Y, W); mae(Y, W)); mae(W, X), (pai(Y, W); mae(Y, W)).
tio(X, Y) :- neto(Y, W), (mae(W, X); pai(W, X)), not(pai(X, Y)), not(mae(X, Y)).
primo(X, Y) :- pai(Z, X), tio(Z, Y); mae(Z, X), tio(Z, Y), !.