import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class CustomTime extends StatefulWidget {
  const CustomTime({super.key});

  @override
  State<CustomTime> createState() => _CustomTimeState();
}

class _CustomTimeState extends State<CustomTime> {
  var hour = 0;
  var minute = 0;
  bool isAM = true;
  String aMtext = 'AM';

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: NumberPicker(
                      minValue: 0,
                      maxValue: 12,
                      value: hour,
                      zeroPad: true,
                      infiniteLoop: true,
                      itemWidth: 40,
                      itemHeight: 30,
                      onChanged: (value) {
                        setState(() {
                          hour = value;
                        });
                      },
                      textStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      selectedTextStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.white),
                            bottom: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),
                  Text(
                    ':',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 22),
                    child: NumberPicker(
                      minValue: 0,
                      maxValue: 60,
                      value: minute,
                      zeroPad: true,
                      infiniteLoop: true,
                      itemWidth: 40,
                      itemHeight: 30,
                      onChanged: (value) {
                        setState(() {
                          minute = value;
                        });
                      },
                      textStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      selectedTextStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.white),
                            bottom: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                if (isAM)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isAM = !isAM;
                        aMtext = 'PM';
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        'AM',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                if (!isAM)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isAM = !isAM;
                        aMtext = 'AM';
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        'PM',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
              ],
            )
          ],
        ),
        Text(
          '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')} ${aMtext}',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ],
    );
  }
}
