type nat =  
 |Z 
 |S of nat

let rec nat_of_int n =
  if n < 0 then invalid_arg "nat_of_int"
  else if n = 0 then Z
  else S (nat_of_int (n - 1))



let rec int_of_nat = function
  |Z -> 0
  |S n -> 1 + int_of_nat n

  

(*Hace que m sea Z y le suma las S de n*)
let rec add n m = 
  match n with
  |Z -> m
  |S n' -> add n' (S m)


let pred = function
  | S n -> n                       


let rec sub m n =
  match m, n with
  | _, Z -> m
  | Z, _ -> Z
  | S m', S n' -> sub m' n'


let rec mult m n =
  match m with
  | Z -> Z
  | S m' -> add n (mult m' n)      (* m * n = n + (m-1) * n *)


let rec div m n =
  if m < n then Z 
  else S (div (sub m n) n)


let rec rem m n =
  if m < n then m 
  else rem (sub m n) n


let rec exp m n =
  match n with
  | Z -> S Z
  | S n' -> mult m (exp m n')
