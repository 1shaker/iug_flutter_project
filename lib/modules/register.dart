// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable, avoid_print, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:iug_flutter_project/modules/login.dart';
import 'package:iug_flutter_project/shared/componest/componest.dart';

class Register_Screen extends StatelessWidget {
  var email_controller=TextEditingController();
  var password_controller=TextEditingController();
  var Config_Password=TextEditingController();
  var Form_Register =GlobalKey<FormState>();
  bool ispass=true;

  Register_Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar:AppBar(
        backgroundColor:Colors.white,
        elevation:0.0,
        leading:IconButton(
            onPressed:(){
              Navigator.pop(context);
            },
            icon:const Icon(Icons
          .arrow_back_ios,color:Colors.black,)
      ),),
      body:Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key:Form_Register,
              child: Column(
                children:  [
                  const Text('Welcome',
                      style:TextStyle(
                        color:Colors.black,
                        fontSize:25,
                        fontFamily:'cairo',
                        fontWeight:FontWeight.w700,
                      )
                  ),
                  Container(
                      width:double.infinity,
                      height:70,
                      child:const Text(
                          'Sign up to get started and experience great shopping deals' ,
                          textAlign:TextAlign.center,
                          style:TextStyle(
                            color:Colors.black,
                            fontSize:15,
                            fontFamily:'cairo',
                          )
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  Text_Form_Field(
                      controll:email_controller,
                      keyboardType:TextInputType.text,
                      cursor:Colors.pink
                  ),
                  const SizedBox(height:20),

                  TextFormField(
                    cursorColor: Colors.redAccent,
                    showCursor: true,
                    controller:Config_Password,
                    onFieldSubmitted:(String value){
                      print(value);
                    },
                    validator:(value){
                      if(value!.isEmpty){
                        return'!=';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText:'Config Password',
                      // prefixIcon:const Icon(Icons.lock),

                      suffixIcon:IconButton(color:Colors.black,icon:ispass ?
                      const Icon
                        (Icons
                          .visibility) :const Icon
                        (Icons.visibility_off,color:Colors.black,),
                          onPressed:()
                          {

                          }
                      ),

                    ),


                    style:const TextStyle(
                      color:Colors.black,
                      fontFamily:'cairo',
                      fontSize: 16,
                    ),
                    keyboardType:TextInputType.visiblePassword,
                    obscureText:ispass,),
                  TextFormField(
                    cursorColor: Colors.redAccent,
                    showCursor: true,
                    controller:password_controller,
                    onFieldSubmitted:(String value){
                      print(value);
                    },
                    validator:(value){
                      if(value!.isEmpty){
                        return'password is not be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText:'Password',
                      // prefixIcon:const Icon(Icons.lock),

                      suffixIcon:IconButton(color:Colors.black,icon:ispass ?
                      const Icon
                        (Icons
                          .visibility) :const Icon
                        (Icons.visibility_off,color:Colors.black,),
                          onPressed:()
                          {

                          }
                      ),

                    ),


                    style:const TextStyle(
                      color:Colors.black,
                      fontFamily:'cairo',
                      fontSize: 16,
                    ),
                    keyboardType:TextInputType.visiblePassword,
                    obscureText:ispass,),


                  const SizedBox(height:29),
                  //By_Reusable components
                  De_Button(
                    backgroundColor:Colors.redAccent,
                    function: (){
                      if(Form_Register.currentState!.validate()){
                        print(email_controller.text);
                        print(password_controller.text);
                      }

                    },
                    text:'LOGIN',
                    BorderRadiuss:1,
                  ),
                  const SizedBox(
                    height:20,
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children:  [
                      const Text('an account?'),
                      TextButton(onPressed:(){
                        Navigator.push(context,
                            MaterialPageRoute(builder:(context)=>const login_secrrn())
                        );
                      },child: const Text('login')),
                    ],
                  )
                ],

              ),
            ),
          ),

        ),
      ),
    );
  }
}
