import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
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
                  Text(
                    "Today",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Text(
                          "28 JUNE 2023",
                          style: TextStyle(
                              color: Color(0xffcddc39),
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.calendar_today,
                          color: Colors.white,
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
                  Text(
                    "Date of Birth",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Text(
                          "25 JUNE 1996",
                          style: TextStyle(
                              color: Color(0xffcddc39),
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.calendar_today,
                          color: Colors.white,
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
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "AGE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "27",
                                      style: TextStyle(
                                          color: Color(0xffcddc39),
                                          fontSize: 45,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    SizedBox(width: 5,),
                                    Padding(
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
                                  "0 months | 4 days",
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 13),
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
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "NEXT BIRTHDAY",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                Icon(
                                  Icons.cake,
                                  color: Color(0xffcddc09),
                                  size: 40,
                                ),
                                Text(
                                  "FRIDAY",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "11 months | 28 days",
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 13),
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
                          color: Color(0xff999999),
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
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "YEARS",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white, fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "27",
                                    style: TextStyle(
                                        fontSize: 28, color: Colors.white, fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "MONTHS",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white, fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "300",
                                    style: TextStyle(
                                        fontSize: 28, color: Colors.white, fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "WEEKS",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white, fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "1500",
                                    style: TextStyle(
                                        fontSize: 28, color: Colors.white, fontWeight: FontWeight.w400),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "DAYS",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white, fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "27",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "HOURS",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white, fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "23234",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "MINUTES",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white, fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "235432",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
