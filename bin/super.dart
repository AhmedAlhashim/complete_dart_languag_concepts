// indircate super class
class A {
  var age1;

  info() {
    this.age1 =32;
  }
}

// Direct super class
class B extends A {
  var age2;
  fun() {
    this.age2 = 20; // We use 'this' key word when the var is in the same class.
    super.age1 = 10; // We use 'super' key word when the var IS NOt in the same class.

    print("age1= $age1\nage2= $age2 ");
    super.info();
    print("\n----------\n");
    print("age1= $age1\nage2= $age2 ");

  }
}

// Sub class
class C extends B {
  fun1() {
    super.fun();
  }
}

main() {
  var c = new C();
  c.fun1();
}
