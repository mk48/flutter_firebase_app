import 'package:ffa/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return Form(
            child: ListView(children: [
          const Text(
            "📓",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 130),
          ),
          const SizedBox(height: 8),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email),
              labelText: "Email",
            ),
            autocorrect: false,
          ),
          const SizedBox(height: 8),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock),
              labelText: "Password",
            ),
            autocorrect: false,
            obscureText: true,
          ),
          Row(
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: const Text("Sign in"),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: const Text("Register"),
                ),
              ),
            ],
          ),
          RaisedButton(
            onPressed: () {},
            color: Colors.lightBlue,
            child: const Text(
              "Sign in with google",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ]));
      },
      listener: (context, state) {},
    );
  }
}
