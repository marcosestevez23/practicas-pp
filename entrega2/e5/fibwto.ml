
let rec fibwto w i =
  if i >= String.length w then ""
  else (if w.[i] = '0' then "1" else "01") ^ fibwto w (i + 1)

let fibw w = fibwto w 0


(*Es igual que fastfibto*)
let rec words n w sep =
  if String.length w >= n then ""
  else sep ^ w ^ words n (fibw w) ", "

let () =
  if Array.length Sys.argv <> 2
  then prerr_endline "fibwto: Invalid number of arguments"
  else print_endline (words (int_of_string Sys.argv.(1)) "0" "")