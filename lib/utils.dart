import 'package:flutter/material.dart';

class Utils {
  /// returns true if the DateTimes represents the same day
  static bool compareDates(DateTime date1, DateTime date2) {
    return date1.day == date2.day &&
        date1.month == date2.month &&
        date1.year == date2.year;
  }
  static bool isPortrait(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }
}
