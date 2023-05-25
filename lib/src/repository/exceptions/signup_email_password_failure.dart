class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure([this.message = "An error occured"]);

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return SignUpWithEmailAndPasswordFailure(
            'Please enter a Strong Password');
      case 'invalid-email':
        return SignUpWithEmailAndPasswordFailure('Email is not valid');
      case 'email-already-in-use':
        return SignUpWithEmailAndPasswordFailure('An account already exists');
      case 'operation-not-allowed':
        return SignUpWithEmailAndPasswordFailure('Operation not Allowed');
      case 'user-disabled':
        return SignUpWithEmailAndPasswordFailure('This User is disabled');
      // case 'invalid-phone-number':
      //   return SignUpWithEmailAndPasswordFailure('Enter a correct number');

      default:
        return SignUpWithEmailAndPasswordFailure();
    }
  }
}


