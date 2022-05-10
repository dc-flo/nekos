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

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
