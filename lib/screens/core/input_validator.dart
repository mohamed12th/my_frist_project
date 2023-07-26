class InputValidator {
  static String? emailValidator(value) {
    if (value!.isEmpty) {
      return "please enter your email";
    }
    return null;
  }
  static String? passwordValidator (value) {
    if (value!.isEmpty) {
      return "please enter your password";
    }
    return null;
  }
}