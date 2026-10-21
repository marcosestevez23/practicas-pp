let rec gcd_steps (x, y) =
  if y = 0 then (x, 1)
  else
    let (g, n) = gcd_steps (y, x mod y) in
    (g, n + 1);;