import 'package:age_calculator/age_calculator.dart';

class AgeCalculation {
  // Calculate a person's age
  DateDuration calculateAge(DateTime today, DateTime birthday) {
    DateDuration age = AgeCalculator.age(birthday, today: today);
    // print("Years - ${age.years}");
    // print("Months - ${age.months}");
    // print("Days - ${age.days}");
    // print("Your age is $age");
    return age;
  }

  // Calculate next birthday
  DateDuration nextBirthday(DateTime today, DateTime birthday) {
    DateDuration nextBirthday =
        AgeCalculator.timeToNextBirthday(birthday, fromDate: today);
    return nextBirthday;
  }

  List<String> weekdays = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];
  // Calculate next birthday's weekday
  String nextBirthWeekDay(DateTime today, DateTime birthday) {
    DateTime temp = DateTime(today.year, birthday.month, birthday.day);
    DateTime nextBirthday = temp.isBefore(today)
        ? AgeCalculator.add(date: temp, duration: DateDuration(years: 1))
        : temp;
    return weekdays[nextBirthday.weekday - 1];
  }

  Map<String, int> summary(DateTime today, DateTime birthday) {
    Duration diff = today.difference(birthday);
    DateDuration dateDiff = AgeCalculator.age(birthday, today: today);
    Map<String, int> results = {
      "Years": dateDiff.years,
      "Months": (dateDiff.years * 12) + dateDiff.months,
      "Weeks": (diff.inDays / 7).floor(),
      "Days": diff.inDays,
      "Hours": diff.inHours,
      "Minutes": diff.inMinutes
    };
    return results;

  }


}
