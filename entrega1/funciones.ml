let rec sum_to n = if n <= 0 then 0 else n + sum_to (n - 1);;

let rec exp_2 n = if n = 0 then 1 else 1 lsl n;;

let rec num_digits n = if abs(n) < 10 then 1 else 1 + num_digits (n/10);;

let rec sum_digits n = if n = 0 then 0 else abs(n) mod 10 + sum_digits(n/10);;