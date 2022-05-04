import 'package:driverschoolbus/presentation/widgets/logo_driver.dart';
import 'package:driverschoolbus/presentation/widgets/text_driver.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class VerificationCodeScreen extends StatefulWidget {


  @override
  _VerificationCodeScreenState createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  final String requiredNumber='1245';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              LogoDriver(),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                margin: EdgeInsets.only(right: 120, left: 120),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(
                      color: Color(0xFFFFFFFF),
                      width: 5.0,
                    ),)
                ),
                child: Center(
                  child:TextDriver(
                    text: 'Verification',
                    colorText:Color(0xFFFFFFFF) ,
                    sizeText: 30,
                  ),


                ),
              ),
              SizedBox(height: 15,),
              Center(
                child: TextDriver(
                  text: 'Please enter the verification code \n we sent to your phone number.',
                  colorText: Color(0xFFFFFFFF),
                    sizeText: 24,
                ),
              ),
              SizedBox(height: 15,),
              Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  child: PinCodeTextField(
                    appContext: context,
                    length: 4,
                    onChanged: (value){
                      print(value);
                    },
                    animationDuration: Duration(milliseconds: 300),
                    animationType: AnimationType.fade,
                    backgroundColor: Color(0xFFFFAB4C),
                    pastedTextStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    keyboardType: TextInputType.number,
                    onCompleted: (value)
                    {
                      if(value == requiredNumber)
                        print('Valid pin');
                      else
                        print('Invalid pin');
                    },
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                     inactiveColor: Colors.white,
                     activeColor: Colors.white,
                     selectedColor: Colors.white,
                     inactiveFillColor: Colors.white,
                     selectedFillColor: Colors.white,
                     activeFillColor: Colors.white,
                     disabledColor: Colors.white,
                     // fieldHeight: 50,
                      //fieldWidth: 60,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),

                Center(
                  child: Container(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(

                          primary:Colors.black ,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30),
                          )),
                      child: TextDriver(
                        text: 'Verify',
                        sizeText: 20,
                        colorText:Color(0xFFFFAB4C) ,
                      ),),
                  ),
                ),


            ],
          ),
        ),
      ),
    );
  }
}
