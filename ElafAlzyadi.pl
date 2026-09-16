% =====================
% Gender Facts
% =====================

male(ahmed_alzyadi).
male(yahya_alzyadi).
male(mohammad_alzyadi).
male(abdulelah_alzyadi).
male(hasan_alzyadi).
male(dhiaa_alzyadi).

female(fatima_alzyadi).
female(halima_zyad).
female(hanaa_zyad).
female(elaf_alzyadi).
female(riouf_alzyadi).
female(ghazl_alzyadi).


% =====================
% Parent Facts
% =====================

% Fatima Alzyadi and Ahmed Alzyadi children

parent(ahmed_alzyadi, yahya_alzyadi).
parent(fatima_alzyadi, yahya_alzyadi).

parent(ahmed_alzyadi, mohammad_alzyadi).
parent(fatima_alzyadi, mohammad_alzyadi).


% Yahya Alzyadi and Halima Zayd children

parent(yahya_alzyadi, elaf_alzyadi).
parent(halima_zyad, elaf_alzyadi).

parent(yahya_alzyadi, abdulelah_alzyadi).
parent(halima_zyad, abdulelah_alzyadi).

parent(yahya_alzyadi, hasan_alzyadi).
parent(halima_zyad, hasan_alzyadi).

parent(yahya_alzyadi, riouf_alzyadi).
parent(halima_zyad, riouf_alzyadi).


% Mohammad Alzyadi and Hanaa Zayd children

parent(mohammad_alzyadi, dhiaa_alzyadi).
parent(hanaa_zyad, dhiaa_alzyadi).

parent(mohammad_alzyadi, ghazl_alzyadi).
parent(hanaa_zyad, ghazl_alzyadi).

father(X,Y) :-
    male(X),
    parent(X,Y).

mother(X,Y) :-
    female(X),
    parent(X,Y).

brother(X,Y) :-
    male(X),
    parent(P,X),
    parent(P,Y),
    X \= Y.

sister(X,Y) :-
    female(X),
    parent(P,X),
    parent(P,Y),
    X \= Y.
