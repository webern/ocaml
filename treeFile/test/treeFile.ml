let check msg x = Alcotest.(check bool) msg true x

let test_node () =
  let value = Xxprojxx_treeFile.TreeFile.Empty in
  let expected = Xxprojxx_treeFile.TreeFile.Xyz in
  let someBool = expected = value in
  print_string (string_of_bool someBool);
  print_string "347560394876034897630948760394876034985760349857630489576304867";
  check "a" (someBool)
;;

let tests = [
  "node", `Quick, test_node;
]