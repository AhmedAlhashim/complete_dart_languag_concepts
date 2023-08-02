main(){
  var person= Person();
  print(person("Ahmed","Alhashim",23));
}

class Person {
  call(String fName,lName, int age)
  {
    return "Name: $fName $lName\nAge: $age";
  }
}