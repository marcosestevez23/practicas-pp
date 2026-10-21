let maximo = max_int;;
(*numero máximo*)
(*val maximo : int = 4611686018427387903*)

let minimo = min_int;;
(*numero mínimo*)
(*val minimo : int = -4611686018427387904*)

minimo + maximo;;
(*-1*)
(*- : int = -1*)

minimo + maximo + 1;;
(*0*)
(*- : int = 0*)

maximo + 1;;
(*numero mínimo*)
(*- : int = -4611686018427387904*)

minimo = maximo + 1;;
(*true*)
(*- : bool = true*)

2 * minimo;;
(*0*)
(*- : int = 0*)

minimo - 1 = maximo;;
(*true*)
(*- : bool = true*)

2 * maximo;;
(*-2*)
(*- : int = -2*)

let maximo = 1. /. 0.;;
(*error*)
(*val maximo : float = infinity*)

let minimo = -1.0 /. 0.;;
(*error*)
(*val minimo : float = neg_infinity*)

1. /. maximo;;
(*0*)
(*- : float = 0.*)

1. /. minimo;;
(*-0*)
(*- : float = -0.*)

1. /. maximo = 1. /. minimo;;
(*true*)
(*- : bool = true*)

0. /. 0.;;
(*indeterminación*)
(*- : float = nan*)

maximo +. maximo;;
(*infinity*)
(*- : float = infinity*)

maximo -. maximo;;
(*indeterminación*)
(*- : float = nan*)

-. maximo = minimo;;
(*true*)
(*- : bool = true*)

(*maximo + minimo;; error de tipo, es suma de enteros y son float ambos*)
(*error*)
(*This expression has type float but an expression was expected of type int*)

not (minimo < maximo);;
(*false*)
(*- : bool = false*)

let not = "no";;
(**)
(*val not : string = "no"*)

(*not (minimo < maximo);; error de tipo, not compara string no float*)
(*error*)
(*This expression has type string*)

Stdlib.not (minimo < maximo);;
(*false*)
(*- : bool = false*)

let not = "si" in not ^ not;;
(*sisi*)
(*- : string = "sisi"*)

not;;
(*no*)
(*- : string = "no"*)

(function x -> 2 * x);;
(*doble de x*)
(*- : int -> int = <fun>*)

(function x -> 2 * x) (2 + 1);;
(*6*)
(*- : int = 6*)

(function x -> 2 * x) 2 + 1;;
(*5*)
(*- : int = 5*)

(function y -> 2 * y) ((function y -> 2 * y) 3);;
(*12*)
(*- : int = 12*)

let doble = function z -> 2 * z;;
(*doble de z*)
(*val doble : int -> int = <fun>*)

doble 2 + 1;;
(*5*)
(*- : int = 5*)

doble (doble 3);;
(*12*)
(*- : int = 12*)

(*doble doble 3;; error de tipo, le faltan los parentesis*)
(*error*)
(*The function 'doble' has type int -> int  It is applied to too many arguments*)

abs (1 - 2);;
(*1*)
(*- : int = 1*)

abs 1;;
(*1*)
(*- : int = 1*)

(*abs -1;; error de tipo, le falta un valor ya que piensa que esta restandole uno al absoluto*)
(*error*)
(*This expression has type int -> int but an expression was expected of type int*)

let abs = function x -> if x >= 0. then x else -. x;;
(*define el valor absoluto para float*)
(*val abs : float -> float = <fun>*)

(*abs 1;; error de tipo, abs es para float debido a la función previa*)
(*error*)
(*This expression has type int but an expression was expected of type float*)

abs 1.5;;
(*1.5*)
(*- : float = 1.5*)

Stdlib.abs 1;;
(*1*)
(*- : int = 1*)

let suma = function (x,y) -> x + y;;
(*suma los valores entre parentesis*)
(*val suma : int * int -> int = <fun>*)

2 * suma (2,3) - suma (1,1);;
(*8*)
(*- : int = 8*)

let sumac = function x -> (function y -> x + y);;
(*suma x mas y*)
(*val sumac : int -> int -> int = <fun>*)

sumac 3;;
(*suma 3 a un valor*)
(*- : int -> int = <fun>*)

(sumac 3) 2;;
(*5*)
(*- : int = 5*)

sumac 3 2;;
(*5*)
(*- : int = 5*)

suma (3,2) = sumac 3 2;;
(*true*)
(*- : bool = true*)

(*suma 3;; error de tipo, le falta el segundo operando*)
(*error*)
(*This expression has type int but an expression was expected of type int * int*)

let suma5 = sumac 5;;
(*suma 5 a otro valor*)
(*val suma5 : int -> int = <fun>*)

suma5 10;;
(*15*)
(*- : int = 15*)

let sumac x = function y -> x + y;;
(*suma *)
(*val sumac : int -> int -> int = <fun>*)

sumac 3 2;;
(**)
(*- : int = 5*)

let sumac x y = x + y;;
(*suma x mas y*)
(*val sumac : int -> int -> int = <fun>*)

sumac 3 2;;
(*5*)
(*- : int = 5*)

(+);;
(*suma los valores siguientes*)
(*- : int -> int -> int = <fun>*)

(+) 3 2;;
(**)
(*- : int = 5*)

(<=);;
(*determina los valores mayores o iguales a un valor*)
(*- : 'a -> 'a -> bool = <fun>*)

let adult = (<=) 18;;
(*determina adulto a mayor o igual que 18*)
(*val adult : int -> bool = <fun>*)

adult 18;;
(*true*)
(*- : bool = true*)

adult 12;;
(*false*)
(*- : bool = false*)

adult 25;;
(*true*)
(*- : bool = true*)