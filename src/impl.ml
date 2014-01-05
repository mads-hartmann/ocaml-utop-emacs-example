open Batteries

let compute () =
  (1--999) (* the enum that counts from 1 to 999 *)
  |> Enum.filter (fun i -> i mod 3 = 0 || i mod 5 = 0)
  |> Enum.reduce (+) (* add all remaining values together *)
