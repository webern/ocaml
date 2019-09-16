(*
   Tests for TreeFile.B
*)

let test_string () =
  Alcotest.(check (neg string)) "foo is not bar" "foo" "bar"

let test_string_hasty () =
  assert ("foo" <> "bar")

let tests = [
  "fake test 2", `Quick, test_string;
  "fake test 3", `Quick, test_string_hasty;
  "fake test 4", `Quick, test_string_hasty;
  "fake test 5", `Quick, test_string_hasty;
]
