[![GitHub issues](https://img.shields.io/github/issues/Legytma/spinkit_schema_parser)](https://github.com/Legytma/spinkit_schema_parser/issues "GitHub issues")
[![GitHub forks](https://img.shields.io/github/forks/Legytma/spinkit_schema_parser)](https://github.com/Legytma/spinkit_schema_parser/network "GitHub forks")
[![GitHub stars](https://img.shields.io/github/stars/Legytma/spinkit_schema_parser)](https://github.com/Legytma/spinkit_schema_parser/stargazers "GitHub stars")
[![GitHub license](https://img.shields.io/github/license/Legytma/spinkit_schema_parser)](https://github.com/Legytma/spinkit_schema_parser/blob/master/LICENSE "GitHub license")
[![Pub](https://img.shields.io/pub/v/spinkit_schema_parser)](https://pub.dev/packages/spinkit_schema_parser "Pub")
[![style: effective dart](https://img.shields.io/badge/style-effective_dart-40c4ff.svg)](https://github.com/tenhobi/effective_dart "style: effective dart")
![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/Legytma/spinkit_schema_parser "GitHub tag (latest SemVer)")
![GitHub top language](https://img.shields.io/github/languages/top/Legytma/spinkit_schema_parser "GitHub top language")
![GitHub contributors](https://img.shields.io/github/contributors/Legytma/spinkit_schema_parser "GitHub contributors")
![GitHub last commit](https://img.shields.io/github/last-commit/Legytma/spinkit_schema_parser "GitHub last commit")
![Flutter CI](https://github.com/Legytma/spinkit_schema_parser/workflows/Flutter%20CI/badge.svg "Flutter CI")

# Convert JSON to Widget validating with JSON Schema for Flutter apps

* [What is it](#what-is-it "What is it")
* [TYPE SCHEMA PARSER SUPPORT](TYPE_SCHEMA_PARSER_SUPPORT.md "TYPE SCHEMA PARSER SUPPORT")
* [Getting Started](#getting-started "Getting Started")
  * [Installation](#installation "Installation")
  * [Usage](#usage "Usage")
* [CHANGELOG](CHANGELOG.md "CHANGELOG")
* [Next steps](#next-steps "Next steps")
* [LICENSE](LICENSE "LICENSE")

## What is it

The [spinkit_schema_parser](https://pub.dev/packages/spinkit_schema_parser "spinkit_schema_parser") is a parser implementation to [flutter_spinkit](https://pub.dev/packages/flutter_spinkit "flutter_spinkit") Flutter package implemented with base on [schema_widget](https://pub.dev/packages/schema_widget "schema_widget") package that produces widgets dynamically interpreting JSON objects.

### Installation

* Add this to your package's pubspec.yaml file:
```yaml
dependencies:
  get_it:
  spinkit_schema_parser: ^1.0.0-5
```
* Install packages from the command line:
  with Flutter:
```shell script
$ flutter packages get
```
* Import it into the code file:
```dart
 import 'package:spinkit_schema_parser/spinkit_schema_parser.dart'; 
```

### Usage

```dart
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:schema_widget/schema_widget.dart';
import 'package:spinkit_schema_parser/spinkit_schema_parser.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpinKit Rotating Circle Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: FutureBuilder(
            future: GetIt.I.allReady(ignorePendingAsyncCreation: false),
            builder: (buildContext, snapshot) {
              if (snapshot.hasData) {
                return SchemaWidget.parse<Widget>(context, {
                  "type": "SpinKitRotatingCircle",
                  "color": 0xFF000000,
                });
              }

              return Container();
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
```

## Next steps

- [ ] Publish Package;
- [ ] Make MVP;
- [ ] Minimal documentation;
- [x] Add list of default supported Widgets;
- [x] Add list of default supported Types;
- [ ] Create content about;
