:- use_module(library(dom)).
:- use_module(library(lists)).
:- use_module(library(random)).

% move/3
% Move the doge
move(Doge, Axis, Incr) :-
	get_by_id(board, Board),
	style(Doge, Axis, px(X0)),
	X1 is X0+Incr,
	X1 >= -10,
	(Axis = top -> X1 =< 320 ; X1 =< 720),
	style(Doge, top, px(DogeTop)),
	style(Doge, left, px(DogeLeft)),
	(Axis = top -> doge_free(X1, DogeLeft); doge_free(DogeTop, X1)),
	style(Doge, Axis, px(X1)).

% anim/2
% Change animation of the doge
anim(Doge, Dir) :-
	atom_concat('res/', Dir, Src1),
	atom_concat(Src1, '.gif', Src),
	style(Doge, backgroundImage, url(Src)).

% clear_control/0
% Remove the focus class of any control
clear_controls :-
	findall(X, (get_by_class(control, X), remove_class(X, focus)), _).

% remark_control/1
% Remark the pressed control
remark_control(c).
remark_control(Key) :-
	clear_controls,
	atom_concat('control-', Key, Id),
	get_by_id(Id, Control),
	add_class(Control, focus).

% action/2
% up
action(Doge, w) :-
	anim(Doge, up),
	move(Doge, top, -10).
% down
action(Doge, s) :-
	anim(Doge, down),
	move(Doge, top,  10).
% left
action(Doge, a) :-
	anim(Doge, left),
	move(Doge, left, -10).
% right
action(Doge, d) :-
	anim(Doge, right),
	move(Doge, left,  10).
% poop
action(Doge, p) :-
	style(Doge, top, px(Y0)), style(Doge, left, px(X0)),
	Y1 is Y0+50, X1 is X0+37,
	create(div, Poop),
	style(Poop, top, px(Y1)), style(Poop, left, px(X1)),
	add_class(Poop, poop),
	insert_before(Poop, Doge).

add_wall_at_pos(Top, Left) :- 
    get_by_id(board, Board),
    create(div, Wall),
    T is Top + 20,
    style(Wall, top, px(T)), style(Wall, left, px(Left)),
    add_class(Wall, wall),
    prepend_child(Board, Wall).

add_wall([Top|[Left|_]]) :- add_wall_at_pos(Top, Left).
add_wall([]).

% este predicado retorna os locais das paredes.
% por enquanto esta lista esta fixa.
% voce ira modificar este predicado.
get_walls(X) :-
    X = [[0, 0], [0, 20], [0, 40], [0, 60], [200, 200], [0, 780], [360, 0], [360, 740]].


% este predicado por enquanto sempre tem sucesso.
% voce ira implementa-lo no projeto
doge_free(NewTop, NewLeft) :- true.

% este predicado por enquanto coloca o osso numa
% posicao fixa. Voce ira modifica-lo durante o projeto
rnd_place_bone :-
	get_by_id(bone, Bone),
	style(Bone, top, px(200)),
	style(Bone, left, px(760)),
	show(Bone).

% init/0
% Initilize the game
init :-
	set_seed(1),
	get_by_id(doge, Doge),
	get_by_tag(body, Body),
    get_walls(WallsList),
    maplist(add_wall, WallsList),
	rnd_place_bone,
	bind(Body, keyup, _, clear_controls),
	bind(Body, keydown, Event, (
		event_property(Event, key, Key),
		remark_control(Key),
		action(Doge, Key)
	)).
    
