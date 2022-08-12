abstract class SignInState{}

class SignInInitialState extends SignInState{}

class SignInValidState extends SignInState{}


class SignInErrorState extends SignInState{
  String error;
  SignInErrorState(this.error);
}