import 'package:flutter/material.dart';

import '../global/global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;
  int selectOff = 0;
  int selectOn = 0;
  double cm = 100;
  double value = 0;
  int age = 18;
  int weight = 50;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        backgroundColor: const Color(0xff090e21),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectOff = 1;
                          selectOn = 0;
                        });
                      },
                      child: Container(
                        height: h * 0.24,
                        width: w * 0.2,
                        decoration: BoxDecoration(
                          color: (selectOff == 1)
                              ? const Color(0xff3b3c4d)
                              : const Color(0xff1d1e33),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.male_outlined,
                              size: 130,
                              color: (selectOff == 1)
                                  ? const Color(0xffeb1555)
                                  : Colors.white,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                fontSize: 24,
                                color: (selectOff == 1)
                                    ? const Color(0xffeb1555)
                                    : Colors.white,
                                fontWeight: (selectOff == 1)
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectOff = 0;
                        selectOn = 1;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: h * 0.24,
                        width: w * 0.45,
                        decoration: BoxDecoration(
                          color: (selectOn == 1)
                              ? const Color(0xff3b3c4d)
                              : const Color(0xff1d1e33),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.female,
                              size: 130,
                              color: (selectOn == 1)
                                  ? const Color(0xffeb1555)
                                  : Colors.white,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                fontSize: 24,
                                color: (selectOn == 1)
                                    ? const Color(0xffeb1555)
                                    : Colors.white,
                                fontWeight: (selectOn == 1)
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: h * 0.2,
                  width: w * 0.95,
                  decoration: BoxDecoration(
                    color: const Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "HEIGHT",
                          style: TextStyle(
                            color: Color(0xff3D3C4D),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "${cm.toInt()}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 60,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const TextSpan(
                                  text: " cm",
                                  style: TextStyle(
                                    color: Color(0xff626473),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      SliderTheme(
                        data: const SliderThemeData(
                          thumbColor: Color(0xffeb1555),
                          trackHeight: 2,
                          activeTrackColor: Color(0xff555555),
                        ),
                        child: Slider(
                            min: 00,
                            max: 250,
                            value: cm,
                            onChanged: (val) {
                              cm = val;
                              setState(() {});
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: h * 0.24,
                      width: w * 0.2,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: const Color(0xff1d1e33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Age",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "$age",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                  child: Container(
                                    height: 55,
                                    width: 55,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff4c4f5c),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.remove,
                                      size: 30,
                                      color: Color(0xfff67fa4),
                                    ),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      age--;
                                    });
                                  }),
                              InkWell(
                                child: Container(
                                  height: 55,
                                  width: 55,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff6e6f7a),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    size: 30,
                                    color: Color(0xfff67fa4),
                                  ),
                                ),
                                onTap: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: h * 0.24,
                      width: w * 0.2,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: const Color(0xff1d1e33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Weight",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "$weight",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                child: Container(
                                  height: 55,
                                  width: 55,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff4c4f5c),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.remove,
                                    size: 30,
                                    color: Color(0xfff67fa4),
                                  ),
                                ),
                                onTap: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              InkWell(
                                child: Container(
                                  height: 55,
                                  width: 55,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff6e6f7a),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    size: 30,
                                    color: Color(0xfff67fa4),
                                  ),
                                ),
                                onTap: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(20),
                        ),
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: h * 0.4,
                            decoration: const BoxDecoration(
                              color: Color(0xff090e21),
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "RESULT: ${Global.getOutPut()}",
                                    style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "${Global.getResult()}",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: h * 0.04,
                    width: w,
                    decoration: BoxDecoration(
                      color: const Color(0xffeb1555),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Calculator",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xff090e21),
    );
  }
}
