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
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          // Text View
          ElegantText.displayLarge('displayLarge'),
          ElegantText.displayMedium('displayMedium'),
          ElegantText.displaySmall('displaySmall'),
          theme.margin.m10.verticalMargin,
          ElegantText.headlineLarge('headlineLarge'),
          ElegantText.headlineMedium('headlineMedium'),
          ElegantText.headlineSmall('headlineSmall'),
          theme.margin.m10.verticalMargin,
          ElegantText.titleLarge('titleLarge'),
          ElegantText.titleMedium('titleMedium'),
          ElegantText.titleSmall('titleSmall'),
          theme.margin.m10.verticalMargin,
          ElegantText.labelLarge('labelLarge'),
          ElegantText.labelMedium('labelMedium'),
          ElegantText.labelSmall('labelSmall'),
          theme.margin.m10.verticalMargin,
          ElegantText.bodyLarge('bodyLarge'),
          ElegantText.bodyMedium('bodyMedium'),
          ElegantText.bodySmall('bodySmall'),
          theme.margin.m20.verticalMargin,
          const Divider(height: 1),
          theme.margin.m20.verticalMargin,

          // Filled Button
          ElegantText.labelLarge('Filled Button'),
          theme.margin.m20.verticalMargin,
          Row(
            children: [
              Expanded(
                child: ElegantFilledButton(
                  title: 'Enabled',
                  onTap: () => print(theme.padding.p10.all),
                ),
              ),
              theme.margin.m20.horizontalMargin,
              Expanded(
                child: ElegantFilledButton(
                  disabled: true,
                  title: 'Disabled',
                  onTap: () {},
                ),
              ),
            ],
          ),
          theme.margin.m20.verticalMargin,
          Row(
            children: [
              Expanded(
                child: ElegantFilledButton.icon(
                  title: 'Enabled',
                  iconData: Icons.add,
                  onTap: () {},
                ),
              ),
              theme.margin.m20.horizontalMargin,
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

          theme.margin.m20.verticalMargin,
          const Divider(height: 1),
          theme.margin.m20.verticalMargin,

          // Outlined Button
          ElegantText.labelLarge('Outlined Button'),
          theme.margin.m20.verticalMargin,
          Row(
            children: [
              Expanded(
                child: ElegantOutlinedButton(
                  title: 'Enabled',
                  onTap: () {},
                ),
              ),
              theme.margin.m20.horizontalMargin,
              Expanded(
                child: ElegantOutlinedButton(
                  disabled: true,
                  title: 'Disabled',
                  onTap: () {},
                ),
              ),
            ],
          ),
          theme.margin.m20.verticalMargin,
          Row(
            children: [
              Expanded(
                child: ElegantOutlinedButton.icon(
                  title: 'Enabled',
                  iconData: Icons.add,
                  onTap: () {},
                ),
              ),
              theme.margin.m20.horizontalMargin,
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

          theme.margin.m20.verticalMargin,
          const Divider(height: 1),
          theme.margin.m20.verticalMargin,

          // Text Button
          ElegantText.labelLarge('Text Button'),
          theme.margin.m20.verticalMargin,
          Row(
            children: [
              Expanded(
                child: ElegantTextButton(
                  title: 'Enabled',
                  onTap: () {},
                ),
              ),
              theme.margin.m20.horizontalMargin,
              Expanded(
                child: ElegantTextButton(
                  disabled: true,
                  title: 'Disabled',
                  onTap: () {},
                ),
              ),
            ],
          ),
          theme.margin.m20.verticalMargin,
          Row(
            children: [
              Expanded(
                child: ElegantTextButton.icon(
                  title: 'Enabled',
                  iconData: Icons.add,
                  onTap: () {},
                ),
              ),
              theme.margin.m20.horizontalMargin,
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

          theme.margin.m20.verticalMargin,
          const Divider(height: 1),
          theme.margin.m20.verticalMargin,

          // Elevated Button
          ElegantText.labelLarge('Elevated Button'),
          theme.margin.m20.verticalMargin,
          Row(
            children: [
              Expanded(
                child: ElegantElevatedButton(
                  title: 'Enabled',
                  onTap: () {},
                ),
              ),
              theme.margin.m20.horizontalMargin,
              Expanded(
                child: ElegantElevatedButton(
                  disabled: true,
                  title: 'Disabled',
                  onTap: () {},
                ),
              ),
            ],
          ),
          theme.margin.m20.verticalMargin,
          Row(
            children: [
              Expanded(
                child: ElegantElevatedButton.icon(
                  title: 'Enabled',
                  iconData: Icons.add,
                  onTap: () {},
                ),
              ),
              theme.margin.m20.horizontalMargin,
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

          theme.margin.m20.verticalMargin,
          const Divider(height: 1),
          theme.margin.m20.verticalMargin,

          // Tonal Button
          ElegantText.labelLarge('Tonal Button'),
          theme.margin.m20.verticalMargin,
          Row(
            children: [
              Expanded(
                child: ElegantTonalButton(
                  title: 'Enabled',
                  onTap: () {},
                ),
              ),
              theme.margin.m20.horizontalMargin,
              Expanded(
                child: ElegantTonalButton(
                  disabled: true,
                  title: 'Disabled',
                  onTap: () {},
                ),
              ),
            ],
          ),
          theme.margin.m20.verticalMargin,
          Row(
            children: [
              Expanded(
                child: ElegantTonalButton.icon(
                  title: 'Enabled',
                  iconData: Icons.add,
                  onTap: () {},
                ),
              ),
              theme.margin.m20.horizontalMargin,
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

          theme.margin.m20.verticalMargin,
          const Divider(height: 1),
          theme.margin.m20.verticalMargin,
        ],
      ),
    );
  }
}
