import 'package:country_code_picker/country_code_picker.dart';
import 'package:delivery_boy_app/OTPController.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login-forgot-screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String dialCodeDigits = "+216";

  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                child: Image.asset("images/login.jpg")),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  "code de vérification",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 400,
              height: 60,
              child: CountryCodePicker(
                onChanged: (country) {
                  setState(() {
                    dialCodeDigits = country.dialCode!;
                  });
                },
                initialSelection: "TN",
                showCountryOnly: false,
                showOnlyCountryWhenClosed: false,
                favorite: ["+216", "TN"],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, right: 10, left: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "numéro de téléphone",
                  prefix: Padding(
                      padding: EdgeInsets.all(4), child: Text(dialCodeDigits)),
                ),
                maxLength: 12,
                keyboardType: TextInputType.number,
                controller: _controller,
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (c) => OTPControllerScreen(
                            phone: _controller.text,
                            codeDigits: dialCodeDigits,
                          )));
                },
                child: Text(
                  'Suivant',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
