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
      home: const ListPage(),
    );
  }
}

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: List.generate(
          10,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: BarberiaListTile(
              onTap: () => print('$index tapped'),
              padding: EdgeInsets.zero,
              prefix: ClipRRect(
                borderRadius: borderRadius.copyWith(
                  topRight: Radius.zero,
                  bottomRight: Radius.zero,
                ),
                child: Image.asset(
                  'assets/images/barber.jpg',
                  height: 94,
                  width: 94,
                  fit: BoxFit.cover,
                ),
              ),
              title: BarberiaText.titleMedium('Daftar $index'),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Icon(
                  //   Icons.star,
                  //   color: BarberiaColors.maximumYellowRed500,
                  // ),
                  BarberiaText.caption(
                    'Ratingasdafdfsdfsfsdfsdf $index',
                    emphasis: Emphasis.less,
                  ),
                ],
              ),
              suffix: Icon(
                Icons.chevron_right,
                color: BarberiaColors.neutral0,
              ),
            ),
          ),
        ),
      ),
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

  SizedBox get _verticalSpace => const SizedBox(height: 8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BarberiaTextFormField(
              hintText: 'Masukkan',
              validator: (_) {
                return null;
              },
              autovalidateMode: AutovalidateMode.always,
              keyboardType: TextInputType.text,
              onChanged: (_) {},
              readOnly: false,
            ),
            _verticalSpace,
            BarberiaTextFormField(
              hintText: 'Kata sandi',
              validator: (_) {
                return null;
              },
              autovalidateMode: AutovalidateMode.always,
              keyboardType: TextInputType.multiline,
              onChanged: (_) {},
              readOnly: false,
              maxLines: 4,
            ),
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
            _verticalSpace,
            const BarberiaButton(label: 'Primary'),
            _verticalSpace,
            const BarberiaButton(
              label: 'Primary Disabled',
              enabled: false,
            ),
            _verticalSpace,
            const BarberiaButton(
              label: 'Busy',
              busy: true,
            ),
            _verticalSpace,
            const BarberiaOutlinedButton(label: 'Outlined'),
            _verticalSpace,
            const BarberiaOutlinedButton(
              label: 'Outlined Disabled',
              enabled: false,
            ),
            _verticalSpace,
            const BarberiaOutlinedButton(
              label: 'Busy',
              busy: true,
            ),
            _verticalSpace,
            const BarberiaButton(
              label: 'Primary',
              variant: ButtonVariant.small,
            ),
            _verticalSpace,
            const BarberiaButton(
              label: 'Primary Disabled',
              enabled: false,
              variant: ButtonVariant.small,
            ),
            _verticalSpace,
            const BarberiaButton(
              label: 'Busy',
              busy: true,
              variant: ButtonVariant.small,
            ),
            _verticalSpace,
            const BarberiaOutlinedButton(
              label: 'Outlined',
              variant: ButtonVariant.small,
            ),
            _verticalSpace,
            const BarberiaOutlinedButton(
              label: 'Outlined Disabled',
              enabled: false,
              variant: ButtonVariant.small,
            ),
            _verticalSpace,
            const BarberiaOutlinedButton(
              label: 'Busy',
              busy: true,
              variant: ButtonVariant.small,
            ),
          ],
        ),
      ),
    );
  }
}
