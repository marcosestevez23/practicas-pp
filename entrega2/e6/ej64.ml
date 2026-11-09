let curry f = fun x y -> f (x, y)
let uncurry f = fun (x, y) -> f x y
let comp f g = fun x -> f (g x)

let i x = x
let j (x, _) = x
let k (_, y) = y
let l _ = 0
