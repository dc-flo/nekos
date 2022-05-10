<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

## Powerfull package to access all current nekos.life api endpoints.

## Features

- OwOifier: OwOify your texts
- Spoiler: spoiler every single character from your text for discord
- get random facts, names and why questions
- get links to nekos.life images and gifs

## Getting started

Install the package to your app over pub with
```
pub add nekos
```

## Usage

```dart
import 'package:nekos/nekos.dart';

void main() async {
    final neko = Nekos();
    String fact = await neko.fact();
    String imgPath = await neko.lewd();
}
```

## Additional information

Report issues to https://github.com/dc-flo/nekos/issues!

List of methods:
| Method        | Return type   |
| -----------   | -----------   |
| fact          | String        |
| owoify        | String        |
| cat           | cat           |
| name          | String        |
| spoiler       | String        |
| why           | String        |
| smug          | String - gif link
| woof          | String - img link
| gasm          | String - img link
| eight_ball    | String - img link
| goose         | String - img link
| cuddle        | String - gif link
| avatar        | String - img link
| slap          | String - gif link
| pat           | String - gif link
| gecg          | String - img link
| feed          | String - gif link
| fox_girl      | String - img link
| lizard        | String - img link
| neko          | String - img link
| hug           | String - gif link
| meow          | String - img link
| kiss          | String - gif link
| wallpaper     | String - img link
| tickle        | String - gif link
| spank         | String - img link
| waifu         | String - img link
| lewd          | String - img link
| ngif          | String - gif link       |