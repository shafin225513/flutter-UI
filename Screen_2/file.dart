import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isChecked = false; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
             width: double.infinity,
             height: double.infinity,
             decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/signup.png'),fit: BoxFit.cover)
             ),

          ),
          const Positioned(
  left: 60,
  top: 90,
  child: Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: 'Hello\n',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24, // Larger size for Hello
            fontWeight: FontWeight.bold,
          ),
        ),
        TextSpan(
          text: 'Sign Up',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40, // Smaller size for Sign Up
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ),
),

          Container(
            padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height*0.5,right: 35,left: 35),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'User Name'
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'Type E-mail'
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'Password'
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
  children: [
    Checkbox(
      value: _isChecked,
      onChanged: (value) {
        setState(() {
          _isChecked = value!;
        });
      },
    ),
    Expanded(
      child: RichText(
        text: TextSpan(
          text: "I accept the ",
          style: TextStyle(color: Colors.grey, fontSize: 12),
          children: [
            TextSpan(
              text: "Terms",
              style: TextStyle(color: Colors.blue),
            ),
            TextSpan(text: " and "),
            TextSpan(
              text: "Privacy Policy",
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
    ),
  ],
),
                    

                const SizedBox(height: 15,),
                ElevatedButton(
                  
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.blue, // Button background color
                     foregroundColor: Colors.white,
                  ),
                  child: Text('Sign-UP')),
                  const SizedBox(height: 20,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        //use icon button in real apps
                        Icon(Icons.facebook, color: Colors.blue),
                        SizedBox(width: 20),
                        Icon(Icons.g_mobiledata, color: Colors.red),
                        SizedBox(width: 20),
                        Icon(Icons.link_rounded, color: Colors.blue),
                      ],
                    ),
               
              ],
            ),
            
          ),
          

        ],
      ),
    );
  }
}
