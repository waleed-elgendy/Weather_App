import 'package:intl/intl.dart';

class ForCastDayModel {
  final String date1, date2, date3;
  final double minTemp1, maxTemp1, minTemp2, maxTemp2, minTemp3, maxTemp3;

  ForCastDayModel({
    required this.date1,
    required this.date2,
    required this.date3,
    required this.minTemp1,
    required this.maxTemp1,
    required this.minTemp2,
    required this.maxTemp2,
    required this.minTemp3,
    required this.maxTemp3,
  });
  factory ForCastDayModel.fromJson(json) {
    return ForCastDayModel(
        date1: DateFormat('dd-MM-yyyy')
            .format(DateTime.parse(json[0]["date"])),
        date2: DateFormat('dd-MM-yyyy')
            .format(DateTime.parse(json[1]["date"])),
        date3: DateFormat('dd-MM-yyyy')
            .format(DateTime.parse(json[2]["date"])),
        maxTemp1: json[0]["day"]["maxtemp_c"],
        maxTemp2: json[1]["day"]["maxtemp_c"],
        maxTemp3: json[2]["day"]["maxtemp_c"],
        minTemp1: json[0]["day"]["mintemp_c"],
        minTemp2: json[1]["day"]["mintemp_c"],
        minTemp3: json[2]["day"]["mintemp_c"]);
  }
}