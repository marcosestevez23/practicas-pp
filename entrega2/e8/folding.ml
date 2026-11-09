let i_prod l = List.fold_left ( * ) 1 l;;

let f_prod l = List.fold_left ( *. ) 1.0 l;;

let lmin l = function
  [] -> raise (Failure "lmin")
  |h::t -> List.fold_left min  h t

let lmin_lmax l = function
  [] -> raise (Failure "lmin_lmax")
  |h::t -> List.fold_left (fun(mn, mx) x -> (min mn x, max mx x)) (h,h) t

let last l = function
  [] -> raise (Failure "last")
  |h::t -> List.fold_left 


