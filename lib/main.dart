import 'package:elegant/elegant.dart';
import 'package:elegant/utils/double_ext.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF009E60),
        brightness: Brightness.light,
        splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
      ),
      home: const MyHomePage(title: 'Design System'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: theme.padding.p20.all,
        children: <Widget>[
          // Text View
          ElegantText.displayLarge('displayLarge'),
          ElegantText.displayMedium('displayMedium'),
          ElegantText.displaySmall('displaySmall'),
          theme.margin.vertical10,
          ElegantText.headlineLarge('headlineLarge'),
          ElegantText.headlineMedium('headlineMedium'),
          ElegantText.headlineSmall('headlineSmall'),
          theme.margin.vertical10,
          ElegantText.titleLarge('titleLarge'),
          ElegantText.titleMedium('titleMedium'),
          ElegantText.titleSmall('titleSmall'),
          theme.margin.vertical10,
          ElegantText.labelLarge('labelLarge'),
          ElegantText.labelMedium('labelMedium'),
          ElegantText.labelSmall('labelSmall'),
          theme.margin.vertical10,
          ElegantText.bodyLarge('bodyLarge'),
          ElegantText.bodyMedium('bodyMedium'),
          ElegantText.bodySmall('bodySmall'),
          theme.margin.vertical20,
          const Divider(height: 1),
          theme.margin.vertical20,

          // Filled Button
          ElegantText.labelLarge('Filled Button'),
          theme.margin.vertical20,
          Row(
            children: [
              Expanded(
                child: ElegantFilledButton(
                  title: 'Enabled',
                  onTap: () => print(theme.padding.p10.all),
                ),
              ),
              theme.margin.horizontal20,
              Expanded(
                child: ElegantFilledButton(
                  disabled: true,
                  title: 'Disabled',
                  onTap: () {},
                ),
              ),
            ],
          ),
          theme.margin.vertical20,
          Row(
            children: [
              Expanded(
                child: ElegantFilledButton.icon(
                  title: 'Enabled',
                  iconData: Icons.add,
                  onTap: () {},
                ),
              ),
              theme.margin.horizontal20,
              Expanded(
                child: ElegantFilledButton.icon(
                  disabled: true,
                  title: 'Disabled',
                  iconData: Icons.add,
                  onTap: () {},
                ),
              ),
            ],
          ),

          theme.margin.vertical20,
          const Divider(height: 1),
          theme.margin.vertical20,

          // Outlined Button
          ElegantText.labelLarge('Outlined Button'),
          theme.margin.vertical20,
          Row(
            children: [
              Expanded(
                child: ElegantOutlinedButton(
                  title: 'Enabled',
                  onTap: () {},
                ),
              ),
              theme.margin.horizontal20,
              Expanded(
                child: ElegantOutlinedButton(
                  disabled: true,
                  title: 'Disabled',
                  onTap: () {},
                ),
              ),
            ],
          ),
          theme.margin.vertical20,
          Row(
            children: [
              Expanded(
                child: ElegantOutlinedButton.icon(
                  title: 'Enabled',
                  iconData: Icons.add,
                  onTap: () {},
                ),
              ),
              theme.margin.horizontal20,
              Expanded(
                child: ElegantOutlinedButton.icon(
                  disabled: true,
                  title: 'Disabled',
                  iconData: Icons.add,
                  onTap: () {},
                ),
              ),
            ],
          ),

          theme.margin.vertical20,
          const Divider(height: 1),
          theme.margin.vertical20,

          // Text Button
          ElegantText.labelLarge('Text Button'),
          theme.margin.vertical20,
          Row(
            children: [
              Expanded(
                child: ElegantTextButton(
                  title: 'Enabled',
                  onTap: () {},
                ),
              ),
              theme.margin.horizontal20,
              Expanded(
                child: ElegantTextButton(
                  disabled: true,
                  title: 'Disabled',
                  onTap: () {},
                ),
              ),
            ],
          ),
          theme.margin.vertical20,
          Row(
            children: [
              Expanded(
                child: ElegantTextButton.icon(
                  title: 'Enabled',
                  iconData: Icons.add,
                  onTap: () {},
                ),
              ),
              theme.margin.horizontal20,
              Expanded(
                child: ElegantTextButton.icon(
                  disabled: true,
                  title: 'Disabled',
                  iconData: Icons.add,
                  onTap: () {},
                ),
              ),
            ],
          ),

          theme.margin.vertical20,
          const Divider(height: 1),
          theme.margin.vertical20,

          // Elevated Button
          ElegantText.labelLarge('Elevated Button'),
          theme.margin.vertical20,
          Row(
            children: [
              Expanded(
                child: ElegantElevatedButton(
                  title: 'Enabled',
                  onTap: () {},
                ),
              ),
              theme.margin.horizontal20,
              Expanded(
                child: ElegantElevatedButton(
                  disabled: true,
                  title: 'Disabled',
                  onTap: () {},
                ),
              ),
            ],
          ),
          theme.margin.vertical20,
          Row(
            children: [
              Expanded(
                child: ElegantElevatedButton.icon(
                  title: 'Enabled',
                  iconData: Icons.add,
                  onTap: () {},
                ),
              ),
              theme.margin.horizontal20,
              Expanded(
                child: ElegantElevatedButton.icon(
                  disabled: true,
                  title: 'Disabled',
                  iconData: Icons.add,
                  onTap: () {},
                ),
              ),
            ],
          ),

          theme.margin.vertical20,
          const Divider(height: 1),
          theme.margin.vertical20,

          // Tonal Button
          ElegantText.labelLarge('Tonal Button'),
          theme.margin.vertical20,
          Row(
            children: [
              Expanded(
                child: ElegantTonalButton(
                  title: 'Enabled',
                  onTap: () {},
                ),
              ),
              theme.margin.horizontal20,
              Expanded(
                child: ElegantTonalButton(
                  disabled: true,
                  title: 'Disabled',
                  onTap: () {},
                ),
              ),
            ],
          ),
          theme.margin.vertical20,
          Row(
            children: [
              Expanded(
                child: ElegantTonalButton.icon(
                  title: 'Enabled',
                  iconData: Icons.add,
                  onTap: () {},
                ),
              ),
              theme.margin.horizontal20,
              Expanded(
                child: ElegantTonalButton.icon(
                  disabled: true,
                  title: 'Disabled',
                  iconData: Icons.add,
                  onTap: () {},
                ),
              ),
            ],
          ),

          theme.margin.vertical20,
          const Divider(height: 1),
          theme.margin.vertical20,
        ],
      ),
    );
  }
}
