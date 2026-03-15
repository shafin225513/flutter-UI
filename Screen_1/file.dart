import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          /// Background Image
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/login.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          /// Text Content
          const Positioned(
            left: 55,
            top: 80,
            child: Text(
              'Welcome\nBack',
              style: TextStyle(
                color: Colors.white,
                fontSize: 33,
                fontWeight: FontWeight.bold,
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
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    hintText: 'E-Mail',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
                const SizedBox(height: 13,),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
                const SizedBox(height: 30,),
                Row(
                  children: [
                    Text('Sign In',style: TextStyle(
                      fontSize:27,
                      fontWeight: FontWeight.w700 
                      ),
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xff4c505c),
                      child: IconButton(
                        onPressed: () {}, 
                        icon:Icon(Icons.arrow_forward_ios)),
                    )

                  ],

                ),
                const SizedBox(height: 30,),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {}, 
                      child: Text('Sign Up',style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        color: Color(0xff4c505b)

                      ),
                    ) 
                  ),
                  const Spacer(),
                    TextButton(
                      onPressed: () {}, 
                      child: Text('Forgot Password? !',style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        color: Color(0xff4c505b)

                       ),
                      )
                    )
                  ],
                )
              ],
            ),

          ),

        ],
      ),
    );
  }
}
