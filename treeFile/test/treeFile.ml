let check msg x = Alcotest.(check bool) msg true x

let test_node () =
  let actual = Xxprojxx_treeFile.TreeFile.Empty in
  let expected = Xxprojxx_treeFile.TreeFile.Empty in
  let someBool = actual = expected in
  print_string (string_of_bool someBool);
  print_string "";
  check "TreeFile.Empty equals TreeFile.Empty" (someBool)
;;

let tests = [
  "node", `Quick, test_node;
]