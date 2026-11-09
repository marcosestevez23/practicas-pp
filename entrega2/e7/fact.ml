let rec fact n = 
    if n < 0 then raise (Invalid_argument"fact") 
    else let rec aux n = if n = 0 then 1 else n * fact (n-1) in aux n