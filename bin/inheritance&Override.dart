// indircate super class
class A {
  info() => print("This is class A");
}

// Direct super class
class B extends A {
  info2() => print("This is class B");
}

// Sub class
class C extends B {
  info3() {
    print("This is class C");
  }
}

class D extends C {
  @override
  info3() {
    print("This is class D ");
    // With the override, the method info3() in Class C,
    // has been modified  in this class
  }
}

main() {
  var d = new D();
  d.info();
  d.info2();
  d.info3();

/*Output:
//This is class A
// This is class B
 This is class D*/
}
