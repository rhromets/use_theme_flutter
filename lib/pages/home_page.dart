import 'package:flutter/material.dart';
import 'package:use_theme_flutter/theme/theme_manager.dart';
import 'package:use_theme_flutter/utils/helper_widgets.dart';

class MyHomePage extends StatefulWidget {
  final ThemeManager themeManager;

  const MyHomePage({
    super.key,
    required this.themeManager,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme App"),
        actions: [
          Switch(
            value: widget.themeManager.themeMode == ThemeMode.dark,
            onChanged: (bool value) {
              setState(() {
                widget.themeManager.toggleTheme(value);
              });
            },
          ),
          addHorisontalSpace(10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/avatar_male.png',
              width: getDynamicHeight10(context) * 15,
              height: getDynamicHeight10(context) * 15,
            ),
            addVerticalSpace(
              getDynamicHeight10(context),
            ),
            const Text('Your Name'),
            addVerticalSpace(
              getDynamicHeight10(context),
            ),
            const Text('@username'),
            addVerticalSpace(
              getDynamicHeight10(context),
            ),
            const Text('This is a simple Status'),
            addVerticalSpace(
              getDynamicHeight10(context),
            ),
            const TextField(),
            addVerticalSpace(
              getDynamicHeight10(context),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Click'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
