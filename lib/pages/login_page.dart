import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_textfield.dart';
import 'package:flutter_application_1/components/square_tile.dart';
import 'package:flutter_application_1/components/my_button.dart';
import 'package:flutter_application_1/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  // Text editing controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Sign user in method
  void signUserIn() {
    // Implement your sign-in logic here
  }

// function to navigate to the RegisterPage
// Function to navigate to the RegisterPage
  void navigateToRegisterPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => RegisterPage(onTap: signUserIn),
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: SizedBox(
          height: 30,
          child: Image.asset(
            'lib/icons/left.png',
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: ListView(
          children: [
            SizedBox(
              height: 70,
              // width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // const SizedBox(height: 5),
                  Text(
                    "Let's sign in with your TOY BOT account",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      height: 2,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            MyTextField(
              controller: usernameController,
              hintText: "Username",
              obscureText: false,
            ),
            const SizedBox(height: 20),
            MyTextField(
              controller: passwordController,
              hintText: "password",
              obscureText: true,
            ),


            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: SizedBox(
                height: 20.0,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('lib/icons/check.png'),
                      const SizedBox(height: 50.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "By continuing you accept our ",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: "Privacy Policy",
                                style: TextStyle(
                                  color: Colors
                                      .blue, // You can change the color to your desired link color
                                  fontSize: 14,
                                  decoration: TextDecoration.underline,
                                ),
                                // Add a GestureRecognizer here for handling taps on the "Privacy Policy" link.
                              ),
                            ],
                          ),
                        ),
                      )
                    ]
                    ),
              ),
            ),
              const SizedBox(height: 20),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: SizedBox(
                height: 20.0,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('lib/icons/empty.png'),
                      const SizedBox(height: 50.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "By continuing you accept our ",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: "Terms & Conditions",
                                style: TextStyle(
                                  color: Colors
                                      .blue, // You can change the color to your desired link color
                                  fontSize: 14,
                                  decoration: TextDecoration.underline,
                                ),
                                // Add a GestureRecognizer here for handling taps on the "Privacy Policy" link.
                              ),
                            ],
                          ),
                        ),
                      )
                      
                    ]
                    
                    ),
              ),
             
            ),

            const SizedBox(height: 25),

            // sign in button
            MyButton(
              onTap: signUserIn,
            ),
            const SizedBox(height: 30),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),

            // or continue with
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.7,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Or sign in with',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.7,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
            // google button
                  SquareTile(imagePath: 'lib/images/google.png'),
            
                  SizedBox(width: 20),
                
                  // apple button
                  SquareTile(imagePath: 'lib/images/apple.png'),
                  SizedBox(height: 5),
                  SizedBox(width: 20),
            
                  // facebook button
                  SquareTile(imagePath: 'lib/images/facebook.png'),
                  ],
                  ) ,

                  const SizedBox(height: 30),

            // Register Now text
      GestureDetector(
        onTap: () {
          navigateToRegisterPage(context); // Call the navigate function
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Not a member?'),
            const SizedBox(width: 4),
            Text(
              'Register now',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
          ],
          

          
        ),
        
      ),
     
    );
  }
}
