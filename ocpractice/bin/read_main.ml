
open Printf

let help () =
  let usage_msg = sprintf "\
Usage: %s FILE
"
    Sys.argv.(0)
  in
  eprintf "%s%!" usage_msg

let read_file filepath =
  let ic = open_in filepath in
  try
    let line = input_line ic in
    print_endline line;
    flush stdout;
    close_in ic

  with e ->
    close_in_noerr ic;
    raise e

let dispatch_subcommand () =
  assert (Array.length Sys.argv > 1);
  match Sys.argv.(1) with
  | "help"
  | "-h"
  | "-help"
  | "--help" ->
      help ()
  | filepath ->
      read_file filepath

let main () =
  let len = Array.length Sys.argv in
  if len <= 1 then (
    help ();
    exit 1
  )
  else
    dispatch_subcommand ()

(* Run now. *)
let () = main ()
