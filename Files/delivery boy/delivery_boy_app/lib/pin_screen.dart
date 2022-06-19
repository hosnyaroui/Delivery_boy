import 'package:delivery_boy_app/verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

import 'package:flutter_svg/flutter_svg.dart';

class PasswordView extends StatefulWidget {
  static const String id = 'password-screen';
  @override
  _PasswordViewState createState() => _PasswordViewState();
}

class _PasswordViewState extends State<PasswordView> {
    String dialCodeDigits = "+216";
  TextEditingController _controller = TextEditingController();
String textController="";
  var selectedindex = 0;
  String code = '';

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
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.deepOrange,
      body: 
       SingleChildScrollView(
        child: Column(
        children: [

          Container(
            height: height * 0.15,
            width: width,
            color: Colors.deepOrange,
            alignment: Alignment.center,
            child: SafeArea(
              child: Container(
                
                  height: 100,
                  width: 40,
                  child: SvgPicture.asset(
                    'assets/logo-short.svg',
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
                              "NUMERO DE TELEPHONE",
                              style: TextStyle(
                                fontSize: 23,
                                color: Colors.black.withBlue(100),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "veuillez renseigner votre numéro de téléphone",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black.withBlue(40),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 1.0),
                            child: Text(
                              "Vous recevrez le code temporaire sous forme un SMS",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black.withBlue(40),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
              margin: EdgeInsets.only(top: 10, right: 10, left: 10),
              child: TextField(
                
                decoration: InputDecoration(
                  
                  prefix: Padding(
                      padding: EdgeInsets.all(4), child:  Text(textController),
),
                ),
                
                
                
                
              ),
            ),
                  Expanded(
                    flex: 2,
                    child: Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DigitHolder(
                              width: width,
                              index: 0,
                              selectedIndex: selectedindex,
                              code: code,
                            ),
                            DigitHolder(
                                width: width,
                                index: 1,
                                selectedIndex: selectedindex,
                                code: code),
                            DigitHolder(
                                width: width,
                                index: 2,
                                selectedIndex: selectedindex,
                                code: code),
                            DigitHolder(
                                width: width,
                                index: 3,
                                selectedIndex: selectedindex,
                                code: code),
                          ],
                        )),
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
                                            setState(() {
                                             textController=textController+"1";

                                            });
                                          },
                                          child: Text('1', style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: FlatButton(
                                          height: double.maxFinite,
                                          onPressed: () {
                                            addDigit(2);
                                            setState(() {
                                             textController=textController+"2";

                                            });
                                          },
                                          child: Text('2', style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: FlatButton(
                                          height: double.maxFinite,
                                          onPressed: () {
                                            addDigit(3);
                                            setState(() {
                                             textController=textController+"3";

                                            });
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
                                            setState(() {
                                             textController=textController+"4";

                                            });
                                          },
                                          child: Text('4', style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: FlatButton(
                                          height: double.maxFinite,
                                          onPressed: () {
                                            addDigit(5);
                                            setState(() {
                                             textController=textController+"5";

                                            });
                                          },
                                          child: Text('5', style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: FlatButton(
                                          height: double.maxFinite,
                                          onPressed: () {
                                            addDigit(6);
                                            setState(() {
                                             textController=textController+"6";

                                            });
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
                                            setState(() {
                                             textController=textController+"7";

                                            });
                                          },
                                          child: Text('7', style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: FlatButton(
                                          height: double.maxFinite,
                                          onPressed: () {
                                            addDigit(8);
                                            setState(() {
                                             textController=textController+"8";

                                            });
                                          },
                                          child: Text('8', style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: FlatButton(
                                          height: double.maxFinite,
                                          onPressed: () {
                                            addDigit(9);
                                            setState(() {
                                             textController=textController+"9";

                                            });
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
                                          height: double.minPositive,
                                          onPressed: () {
                                            addDigit(0);
                                          },
                                          child: Text('', style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: FlatButton(
                                          height: double.minPositive,
                                          onPressed: () {
                                            addDigit(0);
                                            setState(() {
                                             textController=textController+"0";

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
                                            setState(() {
                                             textController=textController+"";

                                            });
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
                  Padding(
                      padding: const EdgeInsets.all(50),
                      child: Column(children: [
                        ElevatedButton(
                          onPressed: () async {
//HTTP here
final signcode = await SmsAutoFill().getAppSignature;
print(signcode);

                            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => PasswordVerification()),
  );
                          },
                          child: const Text(
                            'Envoyer',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(240, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              primary: Colors.deepPurple),
                        ),
                      ],
                      ),
                      ),
                ],
              ),
              ),
        ],
      ),),
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
            
          
    );
  }

}