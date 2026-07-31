import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.1),
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset("assets/images/background.jpg"),
              Positioned(
                left: 20,
                top: 180,
                child: Text("Welcome Back!",style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.black
                ),)
              ),
              Positioned(
                top: 250,
                left: 550,
                right: 20,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.black,
                      width: 2
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            label: Text("Email"),
                            hint: Text("abdullah@gmail.com"),
                            prefixIcon: Icon(Icons.email),
                            suffixIcon: Icon(Icons.account_circle),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: isPassword,
                          controller: passwordController,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            label: Text("Password"),
                            hint: Text("************"),
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(isPassword ? Icons.visibility : Icons.visibility_off),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none
                            ),
                          ),
                          onTap: (){
                            setState(() {
                              isPassword = !isPassword;
                            });
                          },),
                        SizedBox(height: 10,),
                        Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(onPressed: (){}, child: Text("Forget Password ?",
                              style: TextStyle(
                                  color: Colors.red
                              ),))),
                        SizedBox(height: 10,),
                        SizedBox(
                          height: 46,
                          width: double.infinity,
                          child: ElevatedButton(onPressed: (){
                            if(emailController.text.isEmpty){
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text("Email is Required")));
                              return;
                            }
                            if(passwordController.text.isEmpty){
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text("Password is Required")));
                              return;
                            }
                            if(passwordController.text.length < 8){
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text("Password must be more than 8 digits")));
                              return;
                            }
                            else{
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text("Login Successfully")));
                            }

                          },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)
                                  )

                              )
                              , child: Text("Login")),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have account?"),
                            SizedBox(width: 5,),
                            GestureDetector(
                              onTap: (){},
                              child: Text("SignUp",style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w700
                              ),),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                right: 200,
                child: Text("Thank You!",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.black
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
