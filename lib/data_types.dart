// ignore_for_file: dangling_library_doc_comments, avoid_print, unused_local_variable

///
/// Data types & Dart Languages
///

// 1. int
// 2. bool
// 3. double
// 4. float
// 5. dynamic
// 6. var
// 7. final
// 8. const
// 9. string
// 10. List
// 11. Map

// int variables , 0123456789

void main() {
  int a = 12;
  String b = "23ewdss";
  bool c = true;
  double d = 32432.324;
  
  print("-------------- int, float, double, strings , bool--------------");
  print("int = $a");
  print("String =  $b");
  print("bool = $c");
  print("double = $d");

  ///
  /// final and const
  ///
  /// const is not change able value
  ///
  /// final run time value change
  ///
  const name = "awais";
  final name1 = DateTime.now().second;
  print("-------------- final and const --------------");
  print("name = $name");
  print("name1 = $name1");

  print("-------------- dynamic and var --------------");

  ///
  /// dynamic and var
  ///
  /// var is not change able data types
  ///
  /// dynamic  data type change
  ///

  var x = 213;
  dynamic y = 123;

  x = 3242344;
  y = true;
  y = "ewfdw";
  y = 12312.34252;

  print("x = $x");
  print("y = $y");
}
