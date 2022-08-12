abstract class SignInEvent{}

class SignInTextChangeEvent extends SignInEvent{
  String emailValue,passwordValue;
  SignInTextChangeEvent(this.emailValue,this.passwordValue);
}

class SignInSubmitEvent extends SignInEvent{
  String email,password;
  SignInSubmitEvent(this.email,this.password);
}