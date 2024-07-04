// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String LoginEmailValueKey = 'loginEmail';
const String LoginPasswordValueKey = 'loginPassword';

final Map<String, TextEditingController> _LoginViewTextEditingControllers = {};

final Map<String, FocusNode> _LoginViewFocusNodes = {};

final Map<String, String? Function(String?)?> _LoginViewTextValidations = {
  LoginEmailValueKey: null,
  LoginPasswordValueKey: null,
};

mixin $LoginView {
  TextEditingController get loginEmailController =>
      _getFormTextEditingController(LoginEmailValueKey);
  TextEditingController get loginPasswordController =>
      _getFormTextEditingController(LoginPasswordValueKey);

  FocusNode get loginEmailFocusNode => _getFormFocusNode(LoginEmailValueKey);
  FocusNode get loginPasswordFocusNode =>
      _getFormFocusNode(LoginPasswordValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_LoginViewTextEditingControllers.containsKey(key)) {
      return _LoginViewTextEditingControllers[key]!;
    }

    _LoginViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _LoginViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_LoginViewFocusNodes.containsKey(key)) {
      return _LoginViewFocusNodes[key]!;
    }
    _LoginViewFocusNodes[key] = FocusNode();
    return _LoginViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    loginEmailController.addListener(() => _updateFormData(model));
    loginPasswordController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    loginEmailController.addListener(() => _updateFormData(model));
    loginPasswordController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          LoginEmailValueKey: loginEmailController.text,
          LoginPasswordValueKey: loginPasswordController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _LoginViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _LoginViewFocusNodes.values) {
      focusNode.dispose();
    }

    _LoginViewTextEditingControllers.clear();
    _LoginViewFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get loginEmailValue =>
      this.formValueMap[LoginEmailValueKey] as String?;
  String? get loginPasswordValue =>
      this.formValueMap[LoginPasswordValueKey] as String?;

  set loginEmailValue(String? value) {
    this.setData(
      this.formValueMap..addAll({LoginEmailValueKey: value}),
    );

    if (_LoginViewTextEditingControllers.containsKey(LoginEmailValueKey)) {
      _LoginViewTextEditingControllers[LoginEmailValueKey]?.text = value ?? '';
    }
  }

  set loginPasswordValue(String? value) {
    this.setData(
      this.formValueMap..addAll({LoginPasswordValueKey: value}),
    );

    if (_LoginViewTextEditingControllers.containsKey(LoginPasswordValueKey)) {
      _LoginViewTextEditingControllers[LoginPasswordValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasLoginEmail =>
      this.formValueMap.containsKey(LoginEmailValueKey) &&
      (loginEmailValue?.isNotEmpty ?? false);
  bool get hasLoginPassword =>
      this.formValueMap.containsKey(LoginPasswordValueKey) &&
      (loginPasswordValue?.isNotEmpty ?? false);

  bool get hasLoginEmailValidationMessage =>
      this.fieldsValidationMessages[LoginEmailValueKey]?.isNotEmpty ?? false;
  bool get hasLoginPasswordValidationMessage =>
      this.fieldsValidationMessages[LoginPasswordValueKey]?.isNotEmpty ?? false;

  String? get loginEmailValidationMessage =>
      this.fieldsValidationMessages[LoginEmailValueKey];
  String? get loginPasswordValidationMessage =>
      this.fieldsValidationMessages[LoginPasswordValueKey];
}

extension Methods on FormStateHelper {
  setLoginEmailValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[LoginEmailValueKey] = validationMessage;
  setLoginPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[LoginPasswordValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    loginEmailValue = '';
    loginPasswordValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      LoginEmailValueKey: getValidationMessage(LoginEmailValueKey),
      LoginPasswordValueKey: getValidationMessage(LoginPasswordValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _LoginViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _LoginViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      LoginEmailValueKey: getValidationMessage(LoginEmailValueKey),
      LoginPasswordValueKey: getValidationMessage(LoginPasswordValueKey),
    });
