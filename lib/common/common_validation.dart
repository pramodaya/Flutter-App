class Validation {
  static String? isNotEmpty(String? value) {
    return value != null && value.isNotEmpty ? null : 'Field cannot be empty';
  }
}
