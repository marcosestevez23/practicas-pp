0;;
(*0*)
(*- : int = 0*)

0.;;
(*0.*)
(*- : float = 0.*)

(* un comentario es como un espacio en blanco *) "abc";;
(*"abc"*)
(*- : string = "abc"*)

2 + 5 * 3;;
(*17*)
(*- : int = 17*)

2 + (* 5 **) 3;;
(*5*)
(*- : int = 5*)

2 + (* 5 *(*esto es un comentario anidado*)*) 3;;
(*5*)
(*- : int = 5*)

(*1.5 * 2;; error de tipo, * es para enteros, pero 1.5 es float*)
(*error*)
(*The constant 1.5 has type float but an expression was expected of type int*)

(*1.5 *. 2;; error de tipo, * es para enteros, pero 2 es int*)
(*error*)
(*The constant 2 has type int but an expression was expected of type float*)

1.5 *. 2.;;
(*3.*)
(*- : float = 3.*)

(*2 - 0.5;; error de tipo, - es de enteros y 2.5 y 0.5 son float*)
(*error*)
(*The constant 0.5 has type float but an expression was expected of type int*)

(*2. - 0.5;; error de tipo, - es de enteros y 2.5 y 0.5 son float*)
(*error*)
(*The constant 2. has type float but an expression was expected of type int*)

2. -. 2.0;;
(*0.*)
(*- : float = 0.*)

(*2.5 - 0.5;; error de tipo, - es de enteros y 2.5 y 0.5 son float*)
(*error*)
(*The constant 2.5 has type float but an expression was expected of type int*)

2.5 -. 0.5;;
(*2.*)
(*- : float = 2.*)

5 / 2;;
(*2*)
(*- : int = 2*)

5. /. 2.;;
(*2.5*)
(*- : float = 2.5*)

25 mod 3;;
(*1*)
(*- : int = 1*)

(*2 ** 3;; error de tipo, ** es de floats y 2 y 3 son int*)
(*error*)
(*The constant 2 has type int but an expression was expected of type float*)

(*2. ** 3;; error de tipo, ** es de floats y 3 es int*)
(*error*)
(*The constant 3 has type int but an expression was expected of type float*)

2. ** 3.;;
(*8.*)
(*- : float = 8.*)

2. *. 3. ** 2.;;
(*18.*)
(*- : float = 18.*)

(2. *. 3.) ** 2.;;
(*36.*)
(*- : float = 36.*)

2. ** 3. ** 2.;;
(*512.*)
(*(**)- : float = 512.*)

(2. ** 3.) ** 2.;;
(*64.*)
(*- : float = 64.*)

sqrt 2.;;
(*1.41421356237309515*)
(*- : float = 1.41421356237309515*)

(*sqrt 4;; error de tipo, sqrt tiene tipo float -> float, y 4 es int*)
(*error*)
(*The constant 4 has type int but an expression was expected of type float*)

sqrt 2. *. 3.;;
(*4.24264068711928566*)
(*- : float = 4.24264068711928566*)

sqrt (2. *. 3.);;
(*2.44948974278317788*)
(*- : float = 2.44948974278317788*)

2 + 1 = 23 / 7;;
(*true*)
(*- : bool = true*)

2 + 1 <> 23 / 7;;
(*false*)
(*- : bool = false*)

sin 1. ** 2. +. cos 1. ** 2. = 1.;;
(*true*)
(*- : bool = true*)

sqrt 2. ** 2. = 2.;;
(*false*)
(*- : bool = false*)

1 + 2 <= 3;;
(*true*)
(*- : bool = true*)

0.1 +. 0.2 <= 0.3;;
(*false*)
(*- : bool = false*)

3.0 = float_of_int 3;;
(*true*)
(*- : bool = true*)

int_of_float 2.1;;
(*2*)
(*- : int = 2*)

(*int_of_float -2.9;; error de tipo, int_of_float es float -> int pero se esperaba un int porque se interpreta como la resta int_of_float - 2.9, es decir, restar 2.9 a la función.*)
(*error*)
(*The value int_of_float has type float -> int but an expression was expected of type int*)

int_of_float 2.1 + int_of_float (-2.9);;
(*0*)
(*- : int = 0*)

truncate 2.1 + truncate (-2.9);;
(*0*)
(*- : int = 0*)

floor 2.1 +. floor (-2.9);;
(*-1.*)
(*- : float = -1.*)

ceil 2.1 +. ceil (-2.9);;
(*1.*)
(*- : float = 1.*)

'A';;
(*'A'*)
(*- : char = 'A'*)

'0';;
(*'0'*)
(*- : char = '0'*)

int_of_char 'A';;
(*65*)
(*- : int = 65*)

char_of_int 66;;
(*'B'*)
(*- : char = 'B'*)

Char.code 'B';;
(*66*)
(*- : int = 66*)

Char.chr 67;;
(*'C'*)
(*- : char = 'C'*)

'\067';;
(*'C'*)
(*- : char = 'C'*)

'\n';;
(*'\n'*)
(*- : char = '\n'*)

Char.code '\n';;
(*10*)
(*- : int = 10*)

'\010';;
(*'\n'*)
(*- : char = '\n'*)

'\t';;
(*'\t'*)
(*- : char = '\t'*)

Char.chr (Char.code 'M' + Char.code 'a' - Char.code 'A');;
(*'m'*)
(*- : char = 'm'*)

Char.lowercase_ascii 'M';;
(*'m'*)
(*- : char = 'm'*)

Char.uppercase_ascii 'm';;
(*'M'*)
(*- : char = 'M'*)

Char.lowercase_ascii 'm';;
(*'m'*)
(*- : char = 'm'*)

Char.uppercase_ascii '0';;
(*'0'*)
(*- : char = '0'*)

Char.lowercase_ascii '0';;
(*'0'*)
(* : char = '0'*)

"this is a string";;
(*"this is a string"*)
(*- : string = "this is a string"*)

"A";;
(*"A"*)
(*- : string = "A"*)

"AB";;
(*"AB"*)
(*- : string = "AB"*)

(*'AB';; error de sintaxis, las comillas solas son para un solo caracter*)
(*error*)
(*Syntax error*)

String.length "longitud";;
(*8*)
(*- : int = 8*)

(*"1999" + "1";; error de tipo, + es para int no para string*)
(*error*)
(*This constant has type string but an expression was expected of type int*)

"1999" ^ "1";;
(*"19991"*)
(*- : string = "19991"*)

int_of_string "1999" + 1;;
(*2000*)
(*- : int = 2000*)

"\065\066";;
(*"AB"*)
(*- : string = "AB"*)

"\t\n";;
(*"\t\n"*)
(*- : string = "\t\n"*)

010 = 10;;
(*true*)
(*- : bool = true*)

char_of_int 010;;
(*'\n'*)
(*- : char = '\n'*)

string_of_int 10;;
(*"10"*)
(*- : string = "10"*)

string_of_int 010;;
(*"10"*)
(*- : string = "10"*)

not true;;
(*false*)
(*- : bool = false*)

true && false;;
(*false*)
(*- : bool = false*)

true || false;;
(*true*)
(*- : bool = true*)

(1 < 2) = false;;
(*false*)
(*- : bool = false*)

not (1 < 2);;
(*false*)
(*- : bool = false*)

'1' < '2';;
(*true*)
(*- : bool = true*)

"1" < "2";;
(*true*)
(*- : bool = true*)

2 < 12;;
(*true*)
(*- : bool = true*)

"2" < "12";;
(*false*)
(*- : bool = false*)

"uno" < "dos";;
(*false*)
(*- : bool = false*)

if 3 = 4 then 0 else 4;;
(*4*)
(*- : int = 4*)

if 3 = 4 then "0" else "4";;
(*"4"*)
(*- : string = "4"*)

(*if 3 = 4 then 0 else "4";; error de tipo, las dos ramas de un if deben devolver el mismo tipo y aquí una es int y otra string*)
(*error*)
(*This constant has type string but an expression was expected of type int*)

(if 3 < 5 then 8 else 10) + 4;;
(*12*)
(*- : int = 12*)

2.3;;
(*2.3*)
(*- : float = 2.3*)

2,3;;
(*(2, 3)*)
(*- : int * int = (2, 3)*)

(2, 3);;
(*(2, 3)*)
(*- : int * int = (2, 3)*)

('1', '2');;
(*('1', '2')*)
(*- : char * char = ('1', '2')*)

(1, '2');;
(*(1, '2')*)
(*- : int * char = (1, '2')*)

1, ('a', 'b');;
(*(1, ('a', 'b'))*)
(*- : int * (char * char) = (1, ('a', 'b'))*)

(true, "not false");;
(*(true, "not false")*)
(*- : bool * string = (true, "not false")*)

1, 'a', 'b';;
(*(1, 'a', 'b')*)
(*- : int * char * char = (1, 'a', 'b')*)

(1, '1', "1");;
(*(1, '1', "1")*)
(*- : int * char * string = (1, '1', "1")*)

("1");;
(*"1"*)
(*- : string = "1"*)

();;
(*()*)
(*- : unit = ()*)

(());;
(*()*)
(*- : unit = ()*)

0, ();;
(*(0, ())*)
(*- : int * unit = (0, ())*)

[1; 2; 3];;
(*[1; 2; 3]*)
(*- : int list = [1; 2; 3]*)

[1; 1; 1];;
(*[1; 1; 1]*)
(*- : int list = [1; 1; 1]*)

[3; 2; 1; 0];;
(*[3; 2; 1; 0]*)
(*- : int list = [3; 2; 1; 0]*)

['a'; 'b'];;
(*['a'; 'b']*)
(*- : char list = ['a'; 'b']*)

(*['a'; 2];; error de tipo, los elementos deben de ser del mismo tipo*)
(*['a'; '2']*)
(*The constant 2 has type int but an expression was expected of type char*)


['0'];;
(*['0']*)
(*- : char list = ['0']*)

[1; 2; 3] @ [-1; 11];;
(*[1; 2; 3; -1; 11]*)
(*- : int list = [1; 2; 3; -1; 11]*)

[];;
(*[]*)
(*- : 'a list = []*)

[1; 2; 3] @ [];;
(*[1; 2; 3]*)
(*- : int list = [1; 2; 3]*)