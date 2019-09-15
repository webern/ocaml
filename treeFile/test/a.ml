(*
   Tests for TreeFile.A
*)

let check msg x = Alcotest.(check bool) msg true x

let test_time () =
  check "now is greater than 1000" (Xxprojxx_treeFile.A.now () > 1000.);
  check "now is fix" (Xxprojxx_treeFile.A.now () > 1_522_882_648.)

let tests = [
  "time", `Quick, test_time;
]
