import 'package:test/expect.dart';

mixin A{
  info1()=>print("mixin A");
}

mixin B{
  info2()=>print("mixin B");

}

class C{
  info3()=>print("Class C");

}

class D extends C with A,B{
// @override
//   info1() {
//     // TODO: implement info1
//     return super.info1();
//   }
//
//   @override
//   info2() {
//     // TODO: implement info2
//     return super.info2();
//   }
//
//   @override
//   info3() {
//     // TODO: implement info3
//     return super.info3();
//   }

}

main(){
var d= new D();
d.info1()
;
d.info2();
d.info3();
}