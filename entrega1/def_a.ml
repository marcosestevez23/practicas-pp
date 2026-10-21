let pi = 2. *. asin 1.0;;

let e = exp 1.0;;

let max_int_f = float_of_int max_int;;

let per r =  if (r >= 0.0) then 2.0 *. pi *. r else 0.0;;

let area r = if (r >= 0.0) then pi *. r *. r else 0.0;; 

let next_char c = Char.chr ((Char.code c +1)mod 256);; 

let abs_f a = if(a < 0.0) then a *. (-1.0) else a;; 

let odd n = (n mod 2 != 0);;

let next_3_mult n = if (n mod 3 == 0) then n + 3 else n + (3 - (n mod 3));;

let is_letter c = (Char.code c >= 65 && Char.code c <= 90) || (Char.code c >= 97 && Char.code c <= 122);; 

let string_of_bool b = if b then "true" else "false";; 