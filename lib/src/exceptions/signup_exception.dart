class SignupWithEmailAndPasswordException {
  final String message;

  SignupWithEmailAndPasswordException([this.message = "An error occurred"]);

  factory SignupWithEmailAndPasswordException.code(String code) {
    switch (code) {
      case 'weak-password':
        return SignupWithEmailAndPasswordException(
            'Please enter a stronger password');
        break;

      default:
        return SignupWithEmailAndPasswordException();
    }
  }
}
