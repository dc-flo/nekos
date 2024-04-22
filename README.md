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

# :3

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
functions need to be awaited and in an asynchronous function!

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

- fact
- owoify
- cat
- name
- spoiler
- why
- smug
- woof
- gasm
- eightBall
- goose
- cuddle
- avatar
- slap
- pat
- gecg
- feed
- foxGirl
- lizard
- neko
- hug
- meow
- kiss
- wallpaper
- tickle
- spank
- waifu
- lewd
- ngif