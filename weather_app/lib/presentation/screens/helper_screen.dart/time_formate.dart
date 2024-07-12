import 'package:intl/intl.dart';

class TimeFormate {
    String formatTimestamp(int timestamp) {
      final dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
      return DateFormat('hh:mm a').format(dateTime);
  }
}
