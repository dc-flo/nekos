import 'package:nekos/nekos.dart';

void main(List<String> args) async {
  print(await Nekos().fact());
  print(await Nekos().why());
  for(var i = 0; i<5; i++){
    print(await Nekos().gecg());
  }
}