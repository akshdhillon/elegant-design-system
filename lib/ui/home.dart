import 'package:elegant/elegant.dart';
import 'package:elegant/utils/double_ext.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Widget> pages;

  const HomePage(this.pages, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemCount: pages.length,
          padding: theme.padding.p16.all,
          separatorBuilder: (_, __) => theme.margin.vertical16,
          itemBuilder: (_, index) => MaterialButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => pages[index]),
              );
            },
            padding: theme.padding.p20.all,
            color: theme.colorScheme.primaryContainer,
            child: ElegantText.titleMedium(
              pages[index].toString(),
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
      ),
    );
  }
}
