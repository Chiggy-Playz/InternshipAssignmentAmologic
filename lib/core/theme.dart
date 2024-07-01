import 'package:flutter/material.dart';

// Generated using Material Theme Builder
// https://material-foundation.github.io/material-theme-builder
class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff4a52be),
      surfaceTint: Color(0xff4a52be),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff8f97ff),
      onPrimaryContainer: Color(0xff000255),
      secondary: Color(0xff585b86),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd3d4ff),
      onSecondaryContainer: Color(0xff3b3e66),
      tertiary: Color(0xff943a8c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffe07cd2),
      onTertiaryContainer: Color(0xff2a0029),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffbf8ff),
      onSurface: Color(0xff1b1b22),
      onSurfaceVariant: Color(0xff454653),
      outline: Color(0xff767684),
      outlineVariant: Color(0xffc6c5d5),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303037),
      inversePrimary: Color(0xffbec2ff),
      primaryFixed: Color(0xffe0e0ff),
      onPrimaryFixed: Color(0xff00036b),
      primaryFixedDim: Color(0xffbec2ff),
      onPrimaryFixedVariant: Color(0xff3039a5),
      secondaryFixed: Color(0xffe0e0ff),
      onSecondaryFixed: Color(0xff14173e),
      secondaryFixedDim: Color(0xffc0c3f4),
      onSecondaryFixedVariant: Color(0xff40436c),
      tertiaryFixed: Color(0xffffd7f4),
      onTertiaryFixed: Color(0xff390036),
      tertiaryFixedDim: Color(0xffffabf0),
      onTertiaryFixedVariant: Color(0xff782072),
      surfaceDim: Color(0xffdbd9e2),
      surfaceBright: Color(0xfffbf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff5f2fc),
      surfaceContainer: Color(0xffefecf6),
      surfaceContainerHigh: Color(0xffe9e7f1),
      surfaceContainerHighest: Color(0xffe4e1eb),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffbec2ff),
      surfaceTint: Color(0xffbec2ff),
      onPrimary: Color(0xff151c8f),
      primaryContainer: Color(0xff818AF9),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xffc0c3f4),
      onSecondary: Color(0xff2a2d54),
      secondaryContainer: Color(0xff393c65),
      onSecondaryContainer: Color(0xffcfd1ff),
      tertiary: Color(0xffffabf0),
      onTertiary: Color(0xff5c0059),
      tertiaryContainer: Color(0xffae51a4),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff131319),
      onSurface: Color(0xffe4e1eb),
      onSurfaceVariant: Color(0xffc6c5d5),
      outline: Color(0xff908f9e),
      outlineVariant: Color(0xff454653),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e1eb),
      inversePrimary: Color(0xff4a52be),
      primaryFixed: Color(0xffe0e0ff),
      onPrimaryFixed: Color(0xff00036b),
      primaryFixedDim: Color(0xffbec2ff),
      onPrimaryFixedVariant: Color(0xff3039a5),
      secondaryFixed: Color(0xffe0e0ff),
      onSecondaryFixed: Color(0xff14173e),
      secondaryFixedDim: Color(0xffc0c3f4),
      onSecondaryFixedVariant: Color(0xff40436c),
      tertiaryFixed: Color(0xffffd7f4),
      onTertiaryFixed: Color(0xff390036),
      tertiaryFixedDim: Color(0xffffabf0),
      onTertiaryFixedVariant: Color(0xff782072),
      surfaceDim: Color(0xff131319),
      surfaceBright: Color(0xff393840),
      surfaceContainerLowest: Color(0xff0d0e14),
      surfaceContainerLow: Color(0xff1b1b22),
      surfaceContainer: Color(0xff1f1f26),
      surfaceContainerHigh: Color(0xff292930),
      surfaceContainerHighest: Color(0xff34343b),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc3c6ff),
      surfaceTint: Color(0xffbec2ff),
      onPrimary: Color(0xff00025c),
      primaryContainer: Color(0xff7d86f5),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffc5c7f8),
      onSecondary: Color(0xff0f1239),
      secondaryContainer: Color(0xff8a8dbb),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffb2f0),
      onTertiary: Color(0xff30002e),
      tertiaryContainer: Color(0xffcf6dc2),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff131319),
      onSurface: Color(0xfffdf9ff),
      onSurfaceVariant: Color(0xffcbc9d9),
      outline: Color(0xffa2a1b1),
      outlineVariant: Color(0xff828290),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e1eb),
      inversePrimary: Color(0xff323aa6),
      primaryFixed: Color(0xffe0e0ff),
      onPrimaryFixed: Color(0xff00014d),
      primaryFixedDim: Color(0xffbec2ff),
      onPrimaryFixedVariant: Color(0xff1d2494),
      secondaryFixed: Color(0xffe0e0ff),
      onSecondaryFixed: Color(0xff090c34),
      secondaryFixedDim: Color(0xffc0c3f4),
      onSecondaryFixedVariant: Color(0xff2f335b),
      tertiaryFixed: Color(0xffffd7f4),
      onTertiaryFixed: Color(0xff270025),
      tertiaryFixedDim: Color(0xffffabf0),
      onTertiaryFixedVariant: Color(0xff640860),
      surfaceDim: Color(0xff131319),
      surfaceBright: Color(0xff393840),
      surfaceContainerLowest: Color(0xff0d0e14),
      surfaceContainerLow: Color(0xff1b1b22),
      surfaceContainer: Color(0xff1f1f26),
      surfaceContainerHigh: Color(0xff292930),
      surfaceContainerHighest: Color(0xff34343b),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffdf9ff),
      surfaceTint: Color(0xffbec2ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffc3c6ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffdf9ff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffc5c7f8),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9fa),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffb2f0),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff131319),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffdf9ff),
      outline: Color(0xffcbc9d9),
      outlineVariant: Color(0xffcbc9d9),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e1eb),
      inversePrimary: Color(0xff0b1289),
      primaryFixed: Color(0xffe5e4ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffc3c6ff),
      onPrimaryFixedVariant: Color(0xff00025c),
      secondaryFixed: Color(0xffe5e4ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffc5c7f8),
      onSecondaryFixedVariant: Color(0xff0f1239),
      tertiaryFixed: Color(0xffffddf5),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffb2f0),
      onTertiaryFixedVariant: Color(0xff30002e),
      surfaceDim: Color(0xff131319),
      surfaceBright: Color(0xff393840),
      surfaceContainerLowest: Color(0xff0d0e14),
      surfaceContainerLow: Color(0xff1b1b22),
      surfaceContainer: Color(0xff1f1f26),
      surfaceContainerHigh: Color(0xff292930),
      surfaceContainerHighest: Color(0xff34343b),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}

var theme = const MaterialTheme(TextTheme());

ThemeData lightTheme = theme.light();

ThemeData darkTheme = updateTheme(theme.dark());

ThemeData updateTheme(ThemeData theme) {
  return theme.copyWith(
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
    chipTheme: ChipThemeData(
      showCheckmark: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: WidgetStateColor.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return theme.colorScheme.primaryContainer;
          } else {
            return const Color(0xFFF6F6F6);
          }
        },
      ),
      labelStyle: theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.bold,
        color: WidgetStateColor.resolveWith(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return Colors.black;
            }
            return const Color(0xFF252525);
          },
        ),
      ),
      side: WidgetStateBorderSide.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return BorderSide(
              color: const Color(0xFFF1E5E5).withOpacity(0.22),
              width: 2.0,
            );
          } else {
            return BorderSide.none;
          }
        },
      ),
    ),
  );
}
