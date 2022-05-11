library nekos;
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Nekos {
  String basePath = 'https://nekos.life/api/v2/';
  
  Future<String> get(List<String> str) async {
    final response = await http.get(Uri.parse(basePath + str[0]));
    final jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
    return jsonResponse[str[1]];
  }
  
  ///gives random fact
  Future<String> fact() async => await get(['fact', 'fact']);
  ///owoifies a given text
  Future<String> owoify(String text) async => await get(['owoify?text=' + text, 'owo']);
  ///cat
  Future<String> cat() async => await get(['cat', 'cat']);
  ///gives random name
  Future<String> name() async => await get(['name', 'name']);
  ///spoilers every char from the given text for discord
  Future<String> spoiler(String text) async => await get(['spoiler?text=' + text, 'owo']);
  ///gives random why question
  Future<String> why() async => await get(['why', 'why']);
  ///smug
  Future<String> smug() async => await get(['img/smug', 'url']);
  ///doggo
  Future<String> woof() async => await get(['img/woof', 'url']);
  ///HYAAAHHH
  Future<String> gasm() async => await get(['img/gasm', 'url']);
  ///random 8ball
  Future<String> eightBall() async => await get(['img/8ball', 'url']);
  ///gooooooooooooooooooose
  Future<String> goose() async => await get(['img/goose', 'url']);
  ///UwU
  Future<String> cuddle() async => await get(['img/cuddle', 'url']);
  ///random anime avatars
  Future<String> avatar() async => await get(['img/avatar', 'url']);
  ///slaps
  Future<String> slap() async => await get(['img/slap', 'url']);
  ///free headpats
  Future<String> pat() async => await get(['img/pat', 'url']);
  ///spend money on genetic engeneered catgirls for domestic ownership
  Future<String> gecg() async => await get(['img/gecg', 'url']);
  ///yummy
  Future<String> feed() async => await get(['img/feed', 'url']);
  ///foxy
  Future<String> foxGirl() async => await get(['img/fox_girl', 'url']);
  ///lizards
  Future<String> lizard() async => await get(['img/lizard', 'url']);
  ///neko UwU
  Future<String> neko() async => await get(['img/neko', 'url']);
  ///free hugs
  Future<String> hug() async => await get(['img/hug', 'url']);
  ///kitties
  Future<String> meow() async => await get(['img/meow', 'url']);
  ///blush
  Future<String> kiss() async => await get(['img/kiss', 'url']);
  ///insane wallpapers
  Future<String> wallpaper() async => await get(['img/wallpaper', 'url']);
  ///tickle
  Future<String> tickle() async => await get(['img/tickle', 'url']);
  ///spank
  Future<String> spank() async => await get(['img/spank', 'url']);
  ///zerotwo best waifu
  Future<String> waifu() async => await get(['img/waifu', 'url']);
  ///bonk, go to horny jail
  Future<String> lewd() async => await get(['img/lewd', 'url']);
  ///random gifs
  Future<String> ngif() async => await get(['img/ngif', 'url']);
}