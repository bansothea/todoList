import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:todolist/app/core/values/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            'Login Here',
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
                  "Welcome back you've",
                  style: TextStyle( 
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),     
                ),
                const Text(
                  "been Missed",
                  style: TextStyle( 
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
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
                                  "Login",
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
                    Get.toNamed("/signup");
                  }, 
                  child:  const Text(
                    "Create new account",
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