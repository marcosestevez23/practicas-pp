let pi = 2. *. asin 1.0;;

let e = exp 1.0;;

let max_int_f = float_of_int max_int;;

let per = function r -> if (r >= 0.0) then 2.0 *. pi *. r else 0.0;;

let area = function r -> if (r >= 0.0) then pi *. r *. r else 0.0;; 

let next_char = function c -> Char.chr ((Char.code c +1)mod 256);; 

let abs_f =function a -> if(a < 0.0) then a *. (-1.0) else a;; 

let odd = function n -> (n mod 2 != 0);;

let next_3_mult =function n -> if (n mod 3 == 0) then n + 3 else n + (3 - (n mod 3));;

let is_letter = function c-> (Char.code c >= 65 && Char.code c <= 90) || (Char.code c >= 97 && Char.code c <= 122);; 

let string_of_bool = function b -> if b then "true" else "false";; 

