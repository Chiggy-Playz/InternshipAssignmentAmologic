import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
  Size get size => MediaQuery.of(this).size;
  double get width => size.width;
  double get height => size.height;

  void showSnackBar({
    required String message,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void showErrorSnackBar({
    required String message,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: colorScheme.error,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}

extension DateTimeExtension on DateTime {
  String toFormattedString() {
    // dd/MM/yyyy
    return '${day.toString().padLeft(2, '0')}/${month.toString().padLeft(2, '0')}/$year';
  }

  String fromNow() {
    // Implement logic for relative time
    return "Tomorrow at 07:00 AM";
  }
}
