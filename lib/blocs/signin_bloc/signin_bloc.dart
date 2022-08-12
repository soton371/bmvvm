import 'package:bmvvm/blocs/signin_bloc/signin_event.dart';
import 'package:bmvvm/blocs/signin_bloc/signin_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvent,SignInState>{
  SignInBloc():super(SignInInitialState()){
    on<SignInTextChangeEvent>((event, emit) {
      if(event.emailValue.isEmpty){
        emit(SignInErrorState('Please enter email'));
      }
      if(event.passwordValue.length<6){
        emit(SignInErrorState('Please enter 7 digit number'));
      }
    });

    on<SignInSubmitEvent>((event, emit) {

    });
  }
}