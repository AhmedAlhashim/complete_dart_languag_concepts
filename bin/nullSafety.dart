main() {
  String? colorFavorite;
  // the question mark is the null safety application,
  // and it means (Eathier String or null)
  setbackgroundColor(colorFavorite);

}

setbackgroundColor(String? color) {
  String? backgroundColor ;
  if (color == null) return;
  backgroundColor = color!; // see the comment in line 16-19
  print(backgroundColor);
}

// LINE 12: the exclamation mark "!" up there means that I AM taking the full responsibility
// that there is NO null value will be assigned and when i run the code there is
// a warning shows up. (the warning just for a good code readability and does not
// affect the code or the application,