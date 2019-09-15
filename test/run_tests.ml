(*
   Run all the OCaml test suites defined in the project.
*)

let test_suites: unit Alcotest.test list = [
  "TreeFile.A", Test_treeFile.A.tests;
  "TreeFile.B", Test_treeFile.B.tests;
  "TreeFile.TreeFile", Test_treeFile.TreeFile.tests;
  "Sub2.A", Test_ocpractice.A.tests;
]

let () = Alcotest.run "xxprojxx" test_suites
