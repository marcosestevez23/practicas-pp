
let rec fib n =
  if n <= 1 then n
  else fib (n-1) + fib (n-2)



let rec fibto n i =
  let f = fib i in
  if f >= n then ""
  else (if i = 0 then "" else ", ") ^ string_of_int f ^ fibto n (i+1)


let () =
  if Array.length Sys.argv <> 2
  then prerr_endline "fibto: Invalid number of arguments"
  else print_endline (fibto (int_of_string Sys.argv.(1)) 0)