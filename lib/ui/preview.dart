import 'package:elegant/elegant.dart';
import 'package:elegant/utils/double_ext.dart';
import 'package:flutter/material.dart';

class PreviewPage extends StatelessWidget {
  PreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Design System'),
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
          theme.margin.vertical20, ElegantText.labelLarge('Text Input Field'),
          theme.margin.vertical20,
          ElegantTextInputField(
            hint: 'Hint',
          ),
          theme.margin.vertical20,
          ElegantTextInputField.prefix(
            hint: 'Hint',
            icon: Icons.phone,
          ),
          theme.margin.vertical20,
          ElegantTextInputField.suffix(
            hint: 'Hint',
            onIconPressed: () {},
            icon: Icons.graphic_eq_outlined,
          ),
          theme.margin.vertical20,
          const Divider(height: 1),
          theme.margin.vertical20,
          ElegantText.labelLarge('Number Input Field'),
          theme.margin.vertical20,
          ElegantNumberInputField(
            maxLength: 6,
            hint: 'Hint',
          ),
          theme.margin.vertical20,
          ElegantNumberInputField.prefix(
            hint: 'Hint',
            maxLength: 10,
            icon: Icons.phone,
          ),
          theme.margin.vertical20,
          ElegantNumberInputField.suffix(
            hint: 'Hint',
            maxLength: 6,
            onIconPressed: () {},
            icon: Icons.graphic_eq_outlined,
          ),
          theme.margin.vertical20,
          const Divider(height: 1), theme.margin.vertical20, // Filled Button
          ElegantText.labelLarge('Filled Button'),
          theme.margin.vertical20,
          Row(
            children: [
              Expanded(
                child: ElegantFilledButton(
                  title: 'Enabled',
                  onPressed: () => print(theme.padding.p10.all),
                ),
              ),
              theme.margin.horizontal20,
              Expanded(
                child: ElegantFilledButton(
                  enabled: false,
                  title: 'Disabled',
                  onPressed: () {},
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
                  onPressed: () {},
                ),
              ),
              theme.margin.horizontal20,
              Expanded(
                child: ElegantFilledButton.icon(
                  enabled: false,
                  title: 'Disabled',
                  iconData: Icons.add,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          theme.margin.vertical20,
          const Divider(height: 1),
          theme.margin.vertical20, // Outlined Button
          ElegantText.labelLarge('Outlined Button'),
          theme.margin.vertical20,
          Row(
            children: [
              Expanded(
                child: ElegantOutlinedButton(
                  title: 'Enabled',
                  onPressed: () {},
                ),
              ),
              theme.margin.horizontal20,
              Expanded(
                child: ElegantOutlinedButton(
                  enabled: true,
                  title: 'Disabled',
                  onPressed: () {},
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
                  onPressed: () {},
                ),
              ),
              theme.margin.horizontal20,
              Expanded(
                child: ElegantOutlinedButton.icon(
                  enabled: true,
                  title: 'Disabled',
                  iconData: Icons.add,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          theme.margin.vertical20,
          const Divider(height: 1),
          theme.margin.vertical20, // Text Button
          ElegantText.labelLarge('Text Button'),
          theme.margin.vertical20,
          Row(
            children: [
              Expanded(
                child: ElegantTextButton(
                  title: 'Enabled',
                  onPressed: () {},
                ),
              ),
              theme.margin.horizontal20,
              Expanded(
                child: ElegantTextButton(
                  enabled: true,
                  title: 'Disabled',
                  onPressed: () {},
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
                  onPressed: () {},
                ),
              ),
              theme.margin.horizontal20,
              Expanded(
                child: ElegantTextButton.icon(
                  enabled: false,
                  title: 'Disabled',
                  iconData: Icons.add,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          theme.margin.vertical20,
          const Divider(height: 1),
          theme.margin.vertical20, // Elevated Button
          ElegantText.labelLarge('Elevated Button'),
          theme.margin.vertical20,
          Row(
            children: [
              Expanded(
                child: ElegantElevatedButton(
                  title: 'Enabled',
                  onPressed: () {},
                ),
              ),
              theme.margin.horizontal20,
              Expanded(
                child: ElegantElevatedButton(
                  enabled: false,
                  title: 'Disabled',
                  onPressed: () {},
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
                  onPressed: () {},
                ),
              ),
              theme.margin.horizontal20,
              Expanded(
                child: ElegantElevatedButton.icon(
                  enabled: false,
                  title: 'Disabled',
                  iconData: Icons.add,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          theme.margin.vertical20,
          const Divider(height: 1),
          theme.margin.vertical20, // Tonal Button
          ElegantText.labelLarge('Tonal Button'),
          theme.margin.vertical20,
          Row(
            children: [
              Expanded(
                child: ElegantTonalButton(
                  title: 'Enabled',
                  onPressed: () {},
                ),
              ),
              theme.margin.horizontal20,
              Expanded(
                child: ElegantTonalButton(
                  enabled: false,
                  title: 'Disabled',
                  onPressed: () {},
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
                  onPressed: () {},
                ),
              ),
              theme.margin.horizontal20,
              Expanded(
                child: ElegantTonalButton.icon(
                  enabled: false,
                  title: 'Disabled',
                  iconData: Icons.add,
                  onPressed: () {},
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
