import 'package:driverschoolbus/presentation/widgets/logo_driver.dart';
import 'package:driverschoolbus/presentation/widgets/text_button_driver.dart';
import 'package:driverschoolbus/presentation/widgets/text_driver.dart';
import 'package:driverschoolbus/presentation/widgets/text_field_driver.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class VerificationMailScreen extends StatefulWidget {


  @override
  _VerificationMailScreenState createState() => _VerificationMailScreenState();
}

class _VerificationMailScreenState extends State<VerificationMailScreen> {
  var titleController = TextEditingController();
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
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(bottom: 5),
               margin: EdgeInsets.only(right: 150, left: 30),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(
                      color: Color(0xFFFFFFFF),
                      width: 5.0,
                    ),)
                ),
                  //padding: const EdgeInsets.only(left: 5),
                    child: TextDriver(
                      text: 'Verify your email',
                      sizeText: 30,
                      colorText: Color(0xFFFFFFFF),
                      align: TextAlign.left,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextDriver(
                  text: 'Hi Parent! Use the link to verify your email',
                  sizeText: 20,
                  colorText: Color(0xFFFFFFFF),
                ),
              ),
              SizedBox(height: 70,),
              SizedBox(
                height: 370,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color:Color(0xFFFFFFFF),
                  margin: EdgeInsets.only(bottom: 0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15,bottom: 10,left: 10,right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextFieldDriver(
                          hinttext: 'Your email is',
                          iconData: Icons.email,
                          textInputType: TextInputType.text,
                          function: titleController,
                          validatior: (String value)
                          {
                            if(value.isEmpty)
                              return 'email must not be empty';
                            return null;
                          },
                        ),
                        SizedBox(height: 10,),
                       Container(
                         width: double.infinity,
                         child: ElevatedButton(onPressed: (){},
                             style: ElevatedButton.styleFrom(

                                 primary:Colors.black ,
                                 shape: new RoundedRectangleBorder(
                               borderRadius: new BorderRadius.circular(30),
                             )),
                             child: TextDriver(
                               text: 'Submit',
                               sizeText: 20,
                               colorText:Color(0xFFFFAB4C) ,
                             ),),
                       ),
                        SizedBox(height: 10,),
                        TextButtonDriver(
                          onPressed: (){},
                          text: 'Back to login',
                          colorText: Colors.grey,
                          sizeText: 20,
                          decoration: TextDecoration.underline,
                        ),

                      ],
                    ),
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
