
abstract class A{
info1();

}
abstract class B {
info2();
}
class C implements A,B{
  @override
  info1() {
   print("This is the inteface from class A");
  }

  @override
  info2() {
    print("This is the inteface from class B");

  }

}

main(){
var c = C();
c.info1();
c.info2();
}