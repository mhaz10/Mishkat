abstract class AppValidator {
  String? validate(String? value);
}

class EmailValidator extends AppValidator {

  @override
  String? validate(String? value) {
    if (value == null || value.isEmpty) return 'Email is required';
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) return 'Enter a valid email';
    return null;
  }
}

class PasswordValidator extends AppValidator {
  PasswordValidator({this.confirm});

  final String? confirm;

  @override
  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (confirm != null && value != confirm) {
      return 'Passwords do not match';
    }

    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }

    final specialCharRegex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    if (!specialCharRegex.hasMatch(value)) {
      return 'Password must contain at least one special character';
    }

    return null;
  }
}

