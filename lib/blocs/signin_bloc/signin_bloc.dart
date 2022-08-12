import 'package:bmvvm/blocs/signin_bloc/signin_event.dart';
import 'package:bmvvm/blocs/signin_bloc/signin_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvent,SignInState>{
  SignInBloc():super(SignInInitialState()){
    on<SignInTextChangeEvent>((event, emit) => null);

    on<SignInSubmitEvent>((event, emit) => null);
  }
}