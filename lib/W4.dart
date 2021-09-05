void main() {
  /*
   dynamic x =123 ;
  x.toUpperCase();
  Object y =123 ;
  y.toString().toUpperCase();
  String name = f() !;
  var foo = const[1,2,3]; //add const cant add another list ไม่สามารถแก้ไข list ก้อนนี้ได้
  foo.add(4); //cant
  foo = [4,5,6] ; //ชี้ไปอเรย์อื่น
  foo.add(999); //สามารถแก้ไขลิสต์นี้ได้แล้ว เพิ่มค่าเข้าไปได้แล้ว
   */

  //int c = sum (1,2);
  //var f = sum;
  var f = (int a, int b) {
    return a + b;
  };
  var f2 = (int a, int b) => a + b;
  var result = f(123, 456);
  print(result);
}
/*


int sum (int a,int b){
  return a+b;
}
*/

String? f() {
  return ('hello');
}
