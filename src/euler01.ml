open Batteries

let main () =
  Impl.compute ()
  |> Int.print stdout

let () = main ()
