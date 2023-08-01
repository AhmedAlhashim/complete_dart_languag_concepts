import 'dart:io';

void main() async {
  final file = new File('data.txt');

  if(file.existsSync()){
    print( 'file already exists');
  } else {
    print('File NOT found');
  }


}
