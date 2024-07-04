import 'package:kally_dish/generated/l10n.dart';
import 'package:kally_dish/ui/utilities/string_util.dart';

class Validation {
  static String? validateEmail(String? s) {
    if (StringUtil.isEmpty(s)) {
      return S.current.email_cannot_be_empty;
    } else if (!StringUtil.isValidEmail(s!)) {
      return S.current.email_must_be_a_valid_email;
    } else {
      return null;
    }
  }

  static String? validateField(String? s, {String? errorMessage}) {
    if (StringUtil.isEmpty(s)) {
      return errorMessage ?? S.current.required;
    } else {
      return null;
    }
  }

  static String? validatePassword(String? s, {String? errorMessage}) {
    if (StringUtil.isEmpty(s)) {
      return errorMessage ?? S.current.password_required;
    } else if (s!.length <= 5) {
      return S.current.password_too_short;
    } else {
      return null;
    }
  }

  static String? validatePhoneNumber(String? phoneNumber) {
    if (StringUtil.isEmpty(phoneNumber)) {
      return S.current.phone_number_empty;
    }

    try {
      if (phoneNumber!.length < 10) {
        return S.current.phone_number_not_complete;
      }
    } catch (e) {
      return S.current.phone_number_invalid;
    }
    return null;
  }
}
