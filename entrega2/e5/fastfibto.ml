
(*El sep es para evitar la coma dsps del último número*)
let rec fastfibto n a b sep =
  if a < 0 || a >= n then ""      
  else sep ^ string_of_int a ^ fastfibto n b (a + b) ", "

let () =
  if Array.length Sys.argv <> 2
  then prerr_endline "fastfibto: Invalid number of arguments"
  else print_endline (fastfibto (int_of_string Sys.argv.(1)) 0 1 "")