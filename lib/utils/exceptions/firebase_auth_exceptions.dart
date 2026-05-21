class TFirebaseAuthException implements Exception {
  final String code;

  TFirebaseAuthException(this.code);

  String get message {
    switch (code) {
      case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email.';

      case 'invalid-email':
        return 'The email address provided is invalid. Please enter a valid email.';

      case 'weak-password':
        return 'The password is too weak. Please choose a stronger password.';

      case 'user-disabled':
        return 'This user account has been disabled. Please contact support.';

      case 'user-not-found':
        return 'No account found for this email.';

      case 'wrong-password':
        return 'Incorrect password. Please try again.';

      case 'invalid-credential':
        return 'Invalid login details. Please check your email and password.';

      case 'email-already-exists':
        return 'This email already exists. Please use another one.';

      case 'operation-not-allowed':
        return 'This operation is not allowed. Contact support.';

      case 'requires-recent-login':
        return 'Please log in again to continue this action.';

      case 'quota-exceeded':
        return 'Quota exceeded. Please try again later.';

      case 'app-not-authorized':
        return 'App is not authorized for Firebase Authentication.';

      case 'internal-error':
        return 'An internal error occurred. Please try again.';

      case 'INVALID_LOGIN_CREDENTIALS':
        return 'Invalid login credentials.';

      default:
        return 'An unexpected authentication error occurred.';
    }
  }
}