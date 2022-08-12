import 'package:bmvvm/blocs/signin_bloc/signin_bloc.dart';
import 'package:bmvvm/blocs/signin_bloc/signin_event.dart';
import 'package:bmvvm/blocs/signin_bloc/signin_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VSignIn extends StatelessWidget {
  const VSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in'),
      ),
      body: Column(
        children: [

          TextField(
            controller: emailController,
            onChanged: (v){
              BlocProvider.of<SignInBloc>(context).add(SignInTextChangeEvent(emailController.text, passwordController.text));
            },
            decoration: const InputDecoration(
              labelText: 'Email'
            ),
          ),

          TextField(
            controller: passwordController,
            onChanged: (v){
              BlocProvider.of<SignInBloc>(context).add(SignInTextChangeEvent(emailController.text, passwordController.text));
            },
            decoration: const InputDecoration(
                labelText: 'Password'
            ),
          ),

          ElevatedButton(
              onPressed: (){},
              child: const Text('SUBMIT')
          ),

          BlocBuilder<SignInBloc,SignInState>(
              builder: (context,state){
                if(state is SignInErrorState){
                  return Text(state.errorMessage);
                }else{
                  return const Text('no error');
                }
              }
          ),

        ],
      ),
    );
  }
}
