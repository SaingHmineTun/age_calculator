import 'package:age_calculator/age_calculator.dart';
import 'package:d30_age_calculator/services/age_calculation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var todayDate = DateTime.now();
  var birthDate = DateTime(2001, 10, 2);
  late DateDuration _ageDuration;
  late DateDuration _nextBirthday;
  late String _nextBirthWeekday;
  late Map<String, int> _summary;
  final List<String> _months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  Future<void> _selectTodayDate(context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: todayDate,
        firstDate: birthDate,
        lastDate: DateTime(2101));
    if (picked != null && picked != todayDate) {
      setState(() {
        todayDate = picked;
        refreshDate();
      });
    }
  }

  Future<void> _selectBirthDate(context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: birthDate,
        firstDate: DateTime(1990),
        lastDate: todayDate);
    if (picked != null && picked != birthDate) {
      setState(() {
        birthDate = picked;
        refreshDate();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    refreshDate();
  }

  void refreshDate() {
    _ageDuration = AgeCalculation().calculateAge(todayDate, birthDate);
    _nextBirthday = AgeCalculation().nextBirthday(todayDate, birthDate);
    _nextBirthWeekday = AgeCalculation().nextBirthWeekDay(todayDate, birthDate);
    _summary = AgeCalculation().summary(todayDate, birthDate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "AGE CALCULATOR",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Today",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      Text(
                        "${todayDate.day} ${_months[todayDate.month - 1].toUpperCase()} ${todayDate.year}",
                        style: const TextStyle(
                            color: Color(0xffcddc39),
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          _selectTodayDate(context);
                        },
                        child: const Icon(
                          Icons.calendar_today,
                          color: Colors.white,

                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Date of Birth",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      Text(
                        "${birthDate.day} ${_months[birthDate.month - 1].toUpperCase()} ${birthDate.year}",
                        style: const TextStyle(
                            color: Color(0xffcddc39),
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          _selectBirthDate(context);
                        },
                        child: const Icon(
                          Icons.calendar_today,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              width: double.maxFinite,
              margin: const EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                  color: const Color(0xff333333),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 200,
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "AGE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${_ageDuration.years}",
                                    style: const TextStyle(
                                        color: Color(0xffcddc39),
                                        fontSize: 45,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 15.0),
                                    child: Text(
                                      "YEARS",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                "${_ageDuration.months} months | ${_ageDuration.days} days",
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 13),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 180,
                        color: const Color(0xff999999),
                      ),
                      Expanded(
                        child: Container(
                          height: 200,
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "NEXT BIRTHDAY",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                              ),
                              const Icon(
                                Icons.cake,
                                color: Color(0xffcddc09),
                                size: 40,
                              ),
                              Text(
                                _nextBirthWeekday.toUpperCase(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "${_nextBirthday.months} months | ${_nextBirthday.days} days",
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 13),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 1,
                        width: double.maxFinite,
                        color: const Color(0xff999999),
                        margin: EdgeInsets.only(left: 10, right: 10),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        child: Text(
                          "SUMMARY",
                          style: TextStyle(
                              color: Color(0xffcddc39),
                              fontSize: 16,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  "YEARS",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${_summary["Years"]}",
                                  style: const TextStyle(
                                      fontSize: 28,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                const Text(
                                  "MONTHS",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${_summary["Months"]}",
                                  style: const TextStyle(
                                      fontSize: 28,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                const Text(
                                  "WEEKS",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${_summary["Weeks"]}",
                                  style: const TextStyle(
                                      fontSize: 28,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  "DAYS",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${_summary["Days"]}",
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                const Text(
                                  "HOURS",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${_summary["Hours"]}",
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                const Text(
                                  "MINUTES",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${_summary["Minutes"]}",
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
