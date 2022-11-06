import 'package:flutter/material.dart';

import 'package:barberia_ui/barberia_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        visualDensity: VisualDensity.standard,
        backgroundColor: BarberiaColors.background,
        scaffoldBackgroundColor: BarberiaColors.background,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final data = 'Barberia UI';

  Widget _buildTextRow(BarberiaText text, String description) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: text,
        ),
        Flexible(
          flex: 1,
          child: BarberiaText.body(description),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTextRow(BarberiaText.titleLarge('Text Styles'), 'OpenSans'),
            const Divider(
              thickness: 0.5,
              height: 8,
              color: BarberiaColors.neutral0,
            ),
            _buildTextRow(BarberiaText.display('Display'), 'Bold - 36'),
            _buildTextRow(
                BarberiaText.titleLarge('Title Large'), 'Semi-Bold - 22'),
            _buildTextRow(
                BarberiaText.titleMedium('Title Medium'), 'Semi-Bold - 16'),
            _buildTextRow(
                BarberiaText.titleSmall('Title Small'), 'Semi-Bold - 14'),
            _buildTextRow(
                BarberiaText.highlightLarge('Highlight Large'), 'Bold - 22'),
            _buildTextRow(
                BarberiaText.highlightMedium('Highlight Medium'), 'Bold - 16'),
            _buildTextRow(
                BarberiaText.highlightSmall('Highlight Small'), 'Bold - 14'),
            _buildTextRow(BarberiaText.body('Body'), 'Regular - 14'),
            _buildTextRow(BarberiaText.caption('Caption'), 'Regular - 11'),
          ],
        ),
      ),
    );
  }
}
