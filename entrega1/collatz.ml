
let f n = if n mod 2 = 0 then n / 2 else 3 * n + 1;;

let rec verify n = n = 1 || verify (f n);;

let rec verify_to n = n = 1 && (verify n && verify_to(n-1));;

let rec orbit n = string_of_int(n) ^ (if(n = 1)  then "" else ", " ^ orbit (f n));;

let rec lenght n = (if n=1 then 0 else lenght(f n)) + 1;;

let rec top n = (if n <= 1 then 0 else (max n (top (f n))));;