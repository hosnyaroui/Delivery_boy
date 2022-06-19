import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sms_autofill/sms_autofill.dart';

class PasswordVerification extends StatefulWidget {
  static const String id = 'verification-screen';
  @override
  _PasswordVerificationState createState() => _PasswordVerificationState();
}

class _PasswordVerificationState extends State<PasswordVerification> {
  String textController="";
  @override
  void initState() {
    super.initState();
    _listenOtp();
  }

  var selectedindex = 0;
  String code = '';
  final String requiredNumber = '123456';
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w500,
      color: Colors.black.withBlue(40),
    );
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print("Code is $code");
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Column(
        children: [
          Container(
            height: height * 0.15,
            width: width,
            color: Colors.deepOrange,
            alignment: Alignment.center,
            child: SafeArea(
              child: Container(
                  height: height * 0.06,
                  width: height * 0.06,
                  child: Column(
                    children: [
                      SizedBox(width: 10.0, height: 10.0),
                      SvgPicture.asset('assets/logo-short.svg'),
                    ],
                  )),
            ),
          ),
          Container(
              height: height * 0.85,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              "VERIFICATION CODE",
                              style: TextStyle(
                                fontSize: 23,
                                color: Colors.black.withBlue(100),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Container(
                    child: PinFieldAutoFill(
                      codeLength: 6,
                      
                      onCodeChanged: (code) {
                        print(code);
                        
                      },
                    ),
                    
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      "échec d'envoie?",
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black.withBlue(100),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: FlatButton(
                                          height: double.maxFinite,
                                          onPressed: () {
                                            addDigit(1);
                                          },
                                          child: Text('1', style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: FlatButton(
                                          height: double.maxFinite,
                                          onPressed: () {
                                            addDigit(2);
                                          },
                                          child: Text('2', style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: FlatButton(
                                          height: double.maxFinite,
                                          onPressed: () {
                                            addDigit(3);
                                          },
                                          child: Text('3', style: textStyle)),
                                    ),
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: FlatButton(
                                          height: double.maxFinite,
                                          onPressed: () {
                                            addDigit(4);
                                          },
                                          child: Text('4', style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: FlatButton(
                                          height: double.maxFinite,
                                          onPressed: () {
                                            addDigit(5);
                                          },
                                          child: Text('5', style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: FlatButton(
                                          height: double.maxFinite,
                                          onPressed: () {
                                            addDigit(6);
                                          },
                                          child: Text('6', style: textStyle)),
                                    ),
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: FlatButton(
                                          height: double.maxFinite,
                                          onPressed: () {
                                            addDigit(7);
                                          },
                                          child: Text('7', style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: FlatButton(
                                          height: double.maxFinite,
                                          onPressed: () {
                                            addDigit(8);
                                          },
                                          child: Text('8', style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: FlatButton(
                                          height: double.maxFinite,
                                          onPressed: () {
                                            addDigit(9);
                                          },
                                          child: Text('9', style: textStyle)),
                                    ),
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: FlatButton(
                                          height: double.maxFinite,
                                          onPressed: () {
                                            addDigit(0);
                                          },
                                          child: Text('', style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: FlatButton(
                                          height: double.maxFinite,
                                          onPressed: () {
                                            addDigit(0);
                                            setState(() {
                                             textController=textController+"";

                                            });
                                          },
                                          child: Text('0', style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: FlatButton(
                                          height: double.maxFinite,
                                          onPressed: () {
                                            backspace();
                                          },
                                          child: Icon(Icons.backspace_outlined,
                                              color: Colors.black.withBlue(40),
                                              size: 30)),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  addDigit(int digit) {
    if (code.length > 3) {
      return;
    }
    setState(() {
      code = code + digit.toString();
      print('Code is $code');
      selectedindex = code.length;
    });
  }

  backspace() {
    if (code.length == 0) {
      return;
    }
    setState(() {
      code = code.substring(0, code.length - 1);
      selectedindex = code.length;
    });
  }
}

class DigitHolder extends StatelessWidget {
  final int selectedIndex;
  final int index;
  final String code;
  const DigitHolder({
    required this.selectedIndex,
    Key? key,
    required this.width,
    required this.index,
    required this.code,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: width * 0.17,
      width: width * 0.17,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: index == selectedIndex ? Colors.white : Colors.white,
              offset: Offset(0, 0),
              spreadRadius: 1.5,
              blurRadius: 2,
            )
          ]),
      child: code.length > index
          ? Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.black.withBlue(40),
                shape: BoxShape.circle,
              ),
            )
          : Container(),
    );
  }
}

void _listenOtp() async {
  await SmsAutoFill().listenForCode;
}
