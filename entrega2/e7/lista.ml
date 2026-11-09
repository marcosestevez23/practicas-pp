type 'a lista = Nil | Cons of 'a * 'a lista


let rec list_of_list = function 
    |[] -> Nil
    |h::t -> Cons (h, list_of_list t)


let rec list_of_lista = function
    |Nil -> []
    |Cons (h, t) -> h :: list_of_lista t
