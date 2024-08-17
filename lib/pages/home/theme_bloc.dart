import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
abstract class ThemeEvent {
  final bool isDarkMode;
  const ThemeEvent(this.isDarkMode);
}

class ToggleThemeEvent extends ThemeEvent {
  const ToggleThemeEvent(bool isDarkMode) : super(isDarkMode);
}

@immutable
abstract class ThemeState {
  final ThemeMode themeMode;
  const ThemeState(this.themeMode);
}

class ThemeLightState extends ThemeState {
  const ThemeLightState() : super(ThemeMode.light);
}

class ThemeDarkState extends ThemeState {
  const ThemeDarkState() : super(ThemeMode.dark);
}

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeLightState()) {
    on<ToggleThemeEvent>((event, emit) {
      emit(event.isDarkMode ? const ThemeDarkState() : const ThemeLightState());
    });
  }
}
