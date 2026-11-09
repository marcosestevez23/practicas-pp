
type 'a lista = Nil | Cons of 'a * 'a lista

val lista_of_list : 'a list -> 'a lista
val list_of_lista : 'a lista -> 'a list

