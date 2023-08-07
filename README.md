[![pub package](https://img.shields.io/pub/v/authentication_buttons.svg)](https://pub.dev/packages/authentication_buttons)
[![pub points](https://img.shields.io/pub/likes/authentication_buttons?logo=dart)](https://pub.dev/packages/authentication_buttons)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-in-0e76a8)](https://www.linkedin.com/in/shivam-shashank-2b5766217)

# Authentication Buttons

`Authentication Buttons` allows users to build social media authentication buttons for all popular SSO systems.

## Usage

Add the dependency in pubsec.yaml file.

```dart
  dependencies:
    flutter:
      sdk: flutter
    authentication_buttons: 0.0.5
```

## How to Use

```dart
  AuthenticationButton(
    authenticationMethod: AuthenticationMethod.google,
    onPressed: () {},
  )
```

Additional parameters that you might supply include:

- AuthenticationMethod
  - google
  - apple
  - microsoft
  - facebook
  - reddit
  - twitter
  - linkedin
  - github
  - medium
  - dribbble
  - spotify
  - pinterest

    
- ButtonSize
  - small
  - large


- ShowLoader
  - true
  - false

Below is the example with all arguments supplied:

```dart
  AuthenticationButton(
    authenticationMethod: AuthenticationMethod.apple,
    onPressed: () {},
    showLoader: true,
  ),
```

## Screenshots
![demo](https://github.com/shivamshashank/authentication_buttons/assets/60516175/acf4afd7-3772-4671-b056-7fb30b8637fa)
![screenshot_1](https://github.com/shivamshashank/authentication_buttons/assets/60516175/93045dd6-baf6-4c25-956f-5370048cc466)
![screenshot_2](https://github.com/shivamshashank/authentication_buttons/assets/60516175/6803e2b5-ba30-4a04-a3a5-3bab7dfb3fbf)

## Example

```
import 'package:authentication_buttons/src/authentication_button.dart';
import 'package:authentication_buttons/src/utils/enums/authentication_method.dart';
import 'package:authentication_buttons/src/utils/enums/button_size.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        title: 'Authentication Buttons',
        home: AuthenticationButtonsExample(),
      ),
    );

class AuthenticationButtonsExample extends StatelessWidget {
  const AuthenticationButtonsExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Authentication Buttons',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AuthenticationButton(
            authenticationMethod: AuthenticationMethod.google,
            onPressed: () {},
          ),
          AuthenticationButton(
            authenticationMethod: AuthenticationMethod.pinterest,
            onPressed: () {},
            showLoader: true,
          ),
          AuthenticationButton(
            authenticationMethod: AuthenticationMethod.microsoft,
            onPressed: () {},
            showLoader: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AuthenticationButton(
                authenticationMethod: AuthenticationMethod.twitter,
                onPressed: () {},
                buttonSize: ButtonSize.small,
              ),
              AuthenticationButton(
                authenticationMethod: AuthenticationMethod.dribbble,
                onPressed: () {},
                buttonSize: ButtonSize.small,
                showLoader: true,
              ),
              AuthenticationButton(
                authenticationMethod: AuthenticationMethod.spotify,
                onPressed: () {},
                buttonSize: ButtonSize.small,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
```

## Contributing
Pull requests are welcome 🙏

For major changes, please open an issue on [github](https://github.com/shivamshashank/authentication_buttons/issues)
