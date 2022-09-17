import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Column(children: const [
            StandardText(),
            Divider(color: Colors.black),
            SpanText(),
            Divider(color: Colors.black),
            SimpleSelectText(),
            Divider(color: Colors.black),
            SelectSpanText(),
            Divider(color: Colors.black),
            CopyClipboard(),
            Divider(color: Colors.black),
            GlobalSelector()
          ]),
        ));
  }
}

class StandardText extends StatelessWidget {
  const StandardText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      Text('Bloc 1'),
      Text('Bloc 2'),
      Text('Bloc 3'),
    ]);
  }
}

class SpanText extends StatelessWidget {
  const SpanText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: 'Part 1',
        children: [
          TextSpan(
            text: ' Part 2',
          )
        ],
      ),
    );
  }
}

class SimpleSelectText extends StatelessWidget {
  const SimpleSelectText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      SelectableText('Select Bloc 1'),
      SelectableText('Select Bloc 2'),
      SelectableText('Select Bloc 3'),
    ]);
  }
}

class SelectSpanText extends StatelessWidget {
  const SelectSpanText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SelectableText.rich(
      TextSpan(
        text: 'Selectable Part 1',
        children: [
          TextSpan(
            text: ' Selectable Part 2',
          )
        ],
      ),
    );
  }
}

class CopyClipboard extends StatelessWidget {
  const CopyClipboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const Text('Double Click'),
      onDoubleTap: () => Clipboard.setData(const ClipboardData(text: "Double Click")),
    );
  }
}

class GlobalSelector extends StatelessWidget {
  const GlobalSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Column(children: const [
        Text('Select Bloc 1'),
        Text('Select Bloc 2'),
        Text('Select Bloc 3'),
      ])
    );
  }
}
