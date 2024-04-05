import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:widgets_app/config/theme/app_theme.dart";

// Estado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

// Un simple booleano
final isDarkmodeProvider = StateProvider<bool>((ref) => false);

// Un simple entero
final selectedColorProvider = StateProvider<int>((ref) => 0);

// Un objeto de tipo AppTheme (personalizado)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

// Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = Estado = new AppTheme()
  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
