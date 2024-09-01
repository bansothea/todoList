import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todolist/app/core/values/colors.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData( 
        
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Color(0xFF1F41BB),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          )
        )
      ),
      home: Scaffold( 
        appBar: AppBar( 
          title: const Text(
            'Create Account',
            style:TextStyle(
              fontSize: 30,
              color: TodoColor.darkblue,
              fontWeight: FontWeight.bold
            )
            ),
        ),

        ///Body
        body: Container( 
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Column(
              children: [
                const Text(
                  "Create an account so you can explore all the existing app",
                  style: TextStyle( 
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),  
                  textAlign: TextAlign.center,   
                ),
                const SizedBox(
                  height: 40,
                ),
                TextField( 
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: "email",
                    focusColor: Colors.black,
                  ), 
                ),

                const SizedBox(
                  height: 30,
                ),

                TextField( 
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: "Password",
                    focusColor: Colors.black,
                  ), 
                ),

                const SizedBox(
                  height: 30,
                ),

                TextField( 
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: "Confirm Password",
                    focusColor: Colors.black,
                  ), 
                ),

                const SizedBox(
                  height: 30,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                    "Forgot your passowrd ?",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: TodoColor.darkblue
                    ),
                  ),
                  ],
                ),

                const SizedBox(
                  height: 30,
                ),

                Container(
                  height: 60,
                  width: 357,
                  child: ElevatedButton(
                    onPressed: (){}, 
                    child: const Text(
                                  "Sign Up",
                                  style: TextStyle( 
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700
                      ),
                    )),
                ),

                const SizedBox(
                  height: 30,
                ),

                TextButton(
                  onPressed: (){
                    Get.toNamed("/login");
                  }, 
                  child:  const Text(
                    "Already have account?",
                    style: TextStyle( 
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    )
                ),

                const SizedBox(
                  height: 100,
                ),

                const Text(
                  "Or Connect With",
                  style: TextStyle( 
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: TodoColor.darkblue,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                Row( 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     IconButton(
                      color: TodoColor.softWhite,
                      onPressed: (){}, 
                      icon: const Image(
                        image: AssetImage("assets/images/google.png"),
                        width: 24,
                        ),
                      ),
                      IconButton(
                      color: TodoColor.softWhite,
                      onPressed: (){}, 
                      icon: const Image(
                        image: AssetImage("assets/images/facebook.png"),
                        width: 24,
                        ),
                      ),
                      IconButton(
                      color: TodoColor.softWhite,
                      onPressed: (){}, 
                      icon: const Image(
                        image: AssetImage("assets/images/apple.png"),
                        width: 24,
                        ),
                      ),
                  ],
                )

                
              ]
            ),
          ),
        ),
      ),
    );
  }
}