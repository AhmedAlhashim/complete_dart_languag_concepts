main(){
  var n1=  myClass(10)..get();
  var n2=  myClass(15)..get();
  var n3=  myClass();
  n3=n1+n2;
  print("--------");

  print("the sum is:");
  n3.get();
  print("--------");
  n3 = n1-n2;
  print("the sub is:");
  n3.get();
  print("--------");

  n3 = n1*n2;
  print("the Multiplication is:");
  n3.get();
  print("--------");

  n3 = n1/n2;
  print("the division is:");
  n3.get();
}

class myClass{
   double num;

  myClass([this.num=0]);
  get(){
    print("${this.num}");
  }
   myClass operator + (myClass n2){

     var n3=myClass(this.num+n2.num);
     return n3;
   }
   myClass operator - (myClass n2){
     var n3=myClass(this.num-n2.num);
     return n3;
   } myClass operator * (myClass n2){
     var n3=myClass(this.num*n2.num);
     return n3;
   }  myClass operator /(myClass n2) {
     var n3 = myClass(this.num / n2.num);
     return n3;
   }

}