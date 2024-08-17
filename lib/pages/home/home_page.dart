import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:use_theme_flutter/pages/home/theme_bloc.dart';
import 'package:use_theme_flutter/utils/helper_widgets.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme App"),
        actions: [
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return Switch(
                value: state.themeMode == ThemeMode.dark,
                onChanged: (bool value) {
                  context.read<ThemeBloc>().add(ToggleThemeEvent(value));
                },
              );
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
            Text(
              'Your Name',
              style: textTheme.titleLarge,
            ),
            addVerticalSpace(
              getDynamicHeight10(context),
            ),
            Text(
              '@username',
              style: textTheme.titleMedium,
            ),
            addVerticalSpace(
              getDynamicHeight10(context),
            ),
            Text(
              'This is a simple Status',
              style: isDark
                  ? textTheme.titleMedium?.copyWith(
                      color: Colors.white70,
                    )
                  : textTheme.titleMedium?.copyWith(
                      color: Colors.deepPurple,
                    ),
            ),
            addVerticalSpace(
              getDynamicHeight10(context),
            ),
            const TextField(),
            addVerticalSpace(
              getDynamicHeight10(context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Click 1',
                    style: isDark
                        ? textTheme.bodyMedium!.copyWith(
                            color: const Color.fromARGB(255, 118, 128, 181),
                          )
                        : textTheme.bodyMedium!.copyWith(
                            color: Colors.white,
                          ),
                  ),
                ),
                addHorisontalSpace(15),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Click 2'),
                ),
              ],
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
