class A {
A(Message){
  print("Class A: $Message");
}
}

class B extends A{
  B(Message2):super (Message2){
    print("Class B: $Message2");
  }}

class C extends B{
  C(Message3):super (Message3){
    print("Class C: $Message3");
  }}

main(){
  var c = new C("This is super constructor Example");
}