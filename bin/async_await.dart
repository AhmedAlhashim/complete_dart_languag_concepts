import 'package:test/expect.dart';

void main() async{
  await Future.delayed(Duration(seconds: 1), () => 2)
      .then((value) => print('value $value'))
      .catchError((e) => print('error $e'));
  print('value = 1');



  try{
    final value = await  Future.delayed(Duration(seconds: 1), () => 2);
    print(value);
  }catch(e){
    print('error $e');
  }




  final s1 = Stream.periodic(Duration(milliseconds: 500), (a) => a);
  final sub = s1.listen((_) => _);
  sub.onData((data) => data > 10 ? sub.cancel() : print(data));
}
