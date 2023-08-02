enum colors {
  red,
  green,
  Yellow
}


  info(colors s){
  switch(s){
    case colors.red: return "red"; break;
    case colors.green: return "green"; break;
    case colors.Yellow: return "Yellow"; break;
  };


}


main(){
  print(info(colors.red  ));
  print(info(colors.green  ));
  print(info(colors.Yellow  ));
}