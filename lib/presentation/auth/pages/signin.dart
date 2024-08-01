import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/widgets/appbar/app_bar.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/config/assets/app_vectors.dart';
import 'package:spotify/presentation/auth/pages/signup.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 40,
          width: 40,
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 30,
        ),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center ,
          children: [
            _signinText(),
            const SizedBox(height: 80,),
            _userNameField(context),
            const SizedBox(height: 17,),
            _passwordField(context),
            const SizedBox(height: 60,),
            BasicAppButton(
              onPressed:(){}, 
              title: 'Sign In'
              ),
            const SizedBox(
              height: 100,
            ),
            _registerNowText(context),
          ],
        ),
      ),
    );
  }
}

Widget _signinText() {
  return const Text('Sign In',
  style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 25
    ),
  textAlign: TextAlign.center,
  );
}

Widget _userNameField(BuildContext context) {
  return TextField(
    decoration: const InputDecoration(
      hintText: 'Enter Username or Email',
    ).applyDefaults(Theme.of(context).inputDecorationTheme),
  );
}


Widget _passwordField(BuildContext context) {
  return TextField(
    decoration: const InputDecoration(
      hintText: 'Password',
    ).applyDefaults(Theme.of(context).inputDecorationTheme),
  );
}

Widget _registerNowText(BuildContext context){
  return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Not A Memeber?',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        ),
        TextButton(
          onPressed:(){
            Navigator.pushReplacement(
              context, 
              MaterialPageRoute(builder: (BuildContext context) => SignupPage())
              );
          } , 
          child: const Text('Register Now'),      
          )
      ],
  );
}