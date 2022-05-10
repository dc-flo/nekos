import 'package:flutter_test/flutter_test.dart';

import 'package:nekos/nekos.dart';

void main() async {
    final neko = Nekos();
    String fact = await neko.fact();
    String imgPath = await neko.lewd();
}