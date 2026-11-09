
let rec fibkto k n =
  if n < k - 1 then 0
  else if n = k - 1 then 1
  else sumk k n 1


and sumk k n j =
  if j > k then 0
  else fibkto k (n - j) + sumk k n (j + 1)


let rec terms k n i =
  let f = fibkto k i in
  if f >= n then ""
  else (if i = 0 then "" else ", ") ^ string_of_int f ^ terms k n (i + 1)


let () =
  if Array.length Sys.argv <> 3
  then prerr_endline "fibkto: Invalid number of arguments"
  else
    print_endline
      (terms (int_of_string Sys.argv.(1)) (int_of_string Sys.argv.(2)) 0)