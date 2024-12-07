%a
area(austria,83858).
area(france,547030).
area(germany,357021).
area(italy,301230).
area(liechtenstein,160).
area(spain,504851).
area(swisterland,41290).
area(unitedkingdom,244820).

population(austria,8169929).
population(france,63182000).
population(germany,83251851).
population(italy,59530464).
population(liechtenstein,32842).
population(spain,47059533).
population(swisterland,7507000).
population(unitedkingdom,61100835).


neighbor(austria,swisterland).
neighbor(france,swisterland).
neighbor(france,germany).
neighbor(france,spain).
neighbor(germany,swisterland).
neighbor(italy,swisterland).
neighbor(liechtenstein,swisterland).

%b
density(C,D):-area(C,A),population(C,P),D is P/A.

%c
neighbors(C,N):- neighbor(C,N);neighbor(N,C).

%d
find_n(C,N):-neighbors(C,N).

%find_n(swisterland,N).
%N = austria ;
%N = france ;
%N = germany ;
%N = italy ;
%N = liechtenstein.

%e
find_gn(S):-find_n(S,D),
    population(D,A),
    population(S,B),
    A>B,
    area(D,C),
    area(S,E),
    C>E,
    write(D).

%find_gn(germany).
%false.

%f
find_swis(S):-find_n(S,N),density(N,D1),density(S,D2),D1>D2,write(N).
%find_swis(swisterland).
%germany
%true ;
%italy
%true ;
%liechtenstein
%true.

