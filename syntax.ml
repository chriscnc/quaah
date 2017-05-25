

type expr = 
  | CNum of int
  | CAdd of expr * expr

let rec interp e : int = 
  match e with 
  | CNum i -> i
  | CAdd(e1,e2) -> (interp e1) + (interp e2)

let e = CAdd((CNum 6),(CNum 8))


let _ = 
  print_int (interp e)


