main(){
  print(NumberParsing('395').parseInt()+5)
;}

 extension NumberParsing on String{

 int parseInt(){
  return int.parse(this);
}
}