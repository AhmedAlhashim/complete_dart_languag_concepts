import 'dart:ffi';

class A <N ,M>{
  late N x;
  late M y;

}

main(){
  var a = new A<int,double>();
  a.x = 10;
  a.y =21.25;
  print(a.x);
  print(a.y);
  var b = new A<String , bool>();
  b.x = 'Hello';
  b.y = true;
  print(b.x);
 print(b.y);
}