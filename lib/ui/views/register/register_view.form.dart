// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String FirstNameValueKey = 'firstName';
const String LastNameValueKey = 'lastName';
const String RegisterEmailValueKey = 'registerEmail';
const String RegisterPasswordValueKey = 'registerPassword';

final Map<String, TextEditingController> _RegisterViewTextEditingControllers =
    {};

final Map<String, FocusNode> _RegisterViewFocusNodes = {};

final Map<String, String? Function(String?)?> _RegisterViewTextValidations = {
  FirstNameValueKey: null,
  LastNameValueKey: null,
  RegisterEmailValueKey: null,
  RegisterPasswordValueKey: null,
};

mixin $RegisterView {
  TextEditingController get firstNameController =>
      _getFormTextEditingController(FirstNameValueKey);
  TextEditingController get lastNameController =>
      _getFormTextEditingController(LastNameValueKey);
  TextEditingController get registerEmailController =>
      _getFormTextEditingController(RegisterEmailValueKey);
  TextEditingController get registerPasswordController =>
      _getFormTextEditingController(RegisterPasswordValueKey);

  FocusNode get firstNameFocusNode => _getFormFocusNode(FirstNameValueKey);
  FocusNode get lastNameFocusNode => _getFormFocusNode(LastNameValueKey);
  FocusNode get registerEmailFocusNode =>
      _getFormFocusNode(RegisterEmailValueKey);
  FocusNode get registerPasswordFocusNode =>
      _getFormFocusNode(RegisterPasswordValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_RegisterViewTextEditingControllers.containsKey(key)) {
      return _RegisterViewTextEditingControllers[key]!;
    }

    _RegisterViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _RegisterViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_RegisterViewFocusNodes.containsKey(key)) {
      return _RegisterViewFocusNodes[key]!;
    }
    _RegisterViewFocusNodes[key] = FocusNode();
    return _RegisterViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    firstNameController.addListener(() => _updateFormData(model));
    lastNameController.addListener(() => _updateFormData(model));
    registerEmailController.addListener(() => _updateFormData(model));
    registerPasswordController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    firstNameController.addListener(() => _updateFormData(model));
    lastNameController.addListener(() => _updateFormData(model));
    registerEmailController.addListener(() => _updateFormData(model));
    registerPasswordController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          FirstNameValueKey: firstNameController.text,
          LastNameValueKey: lastNameController.text,
          RegisterEmailValueKey: registerEmailController.text,
          RegisterPasswordValueKey: registerPasswordController.text,
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

    for (var controller in _RegisterViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _RegisterViewFocusNodes.values) {
      focusNode.dispose();
    }

    _RegisterViewTextEditingControllers.clear();
    _RegisterViewFocusNodes.clear();
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

  String? get firstNameValue => this.formValueMap[FirstNameValueKey] as String?;
  String? get lastNameValue => this.formValueMap[LastNameValueKey] as String?;
  String? get registerEmailValue =>
      this.formValueMap[RegisterEmailValueKey] as String?;
  String? get registerPasswordValue =>
      this.formValueMap[RegisterPasswordValueKey] as String?;

  set firstNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({FirstNameValueKey: value}),
    );

    if (_RegisterViewTextEditingControllers.containsKey(FirstNameValueKey)) {
      _RegisterViewTextEditingControllers[FirstNameValueKey]?.text =
          value ?? '';
    }
  }

  set lastNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({LastNameValueKey: value}),
    );

    if (_RegisterViewTextEditingControllers.containsKey(LastNameValueKey)) {
      _RegisterViewTextEditingControllers[LastNameValueKey]?.text = value ?? '';
    }
  }

  set registerEmailValue(String? value) {
    this.setData(
      this.formValueMap..addAll({RegisterEmailValueKey: value}),
    );

    if (_RegisterViewTextEditingControllers.containsKey(
        RegisterEmailValueKey)) {
      _RegisterViewTextEditingControllers[RegisterEmailValueKey]?.text =
          value ?? '';
    }
  }

  set registerPasswordValue(String? value) {
    this.setData(
      this.formValueMap..addAll({RegisterPasswordValueKey: value}),
    );

    if (_RegisterViewTextEditingControllers.containsKey(
        RegisterPasswordValueKey)) {
      _RegisterViewTextEditingControllers[RegisterPasswordValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasFirstName =>
      this.formValueMap.containsKey(FirstNameValueKey) &&
      (firstNameValue?.isNotEmpty ?? false);
  bool get hasLastName =>
      this.formValueMap.containsKey(LastNameValueKey) &&
      (lastNameValue?.isNotEmpty ?? false);
  bool get hasRegisterEmail =>
      this.formValueMap.containsKey(RegisterEmailValueKey) &&
      (registerEmailValue?.isNotEmpty ?? false);
  bool get hasRegisterPassword =>
      this.formValueMap.containsKey(RegisterPasswordValueKey) &&
      (registerPasswordValue?.isNotEmpty ?? false);

  bool get hasFirstNameValidationMessage =>
      this.fieldsValidationMessages[FirstNameValueKey]?.isNotEmpty ?? false;
  bool get hasLastNameValidationMessage =>
      this.fieldsValidationMessages[LastNameValueKey]?.isNotEmpty ?? false;
  bool get hasRegisterEmailValidationMessage =>
      this.fieldsValidationMessages[RegisterEmailValueKey]?.isNotEmpty ?? false;
  bool get hasRegisterPasswordValidationMessage =>
      this.fieldsValidationMessages[RegisterPasswordValueKey]?.isNotEmpty ??
      false;

  String? get firstNameValidationMessage =>
      this.fieldsValidationMessages[FirstNameValueKey];
  String? get lastNameValidationMessage =>
      this.fieldsValidationMessages[LastNameValueKey];
  String? get registerEmailValidationMessage =>
      this.fieldsValidationMessages[RegisterEmailValueKey];
  String? get registerPasswordValidationMessage =>
      this.fieldsValidationMessages[RegisterPasswordValueKey];
}

extension Methods on FormStateHelper {
  setFirstNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[FirstNameValueKey] = validationMessage;
  setLastNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[LastNameValueKey] = validationMessage;
  setRegisterEmailValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[RegisterEmailValueKey] = validationMessage;
  setRegisterPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[RegisterPasswordValueKey] =
          validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    firstNameValue = '';
    lastNameValue = '';
    registerEmailValue = '';
    registerPasswordValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      FirstNameValueKey: getValidationMessage(FirstNameValueKey),
      LastNameValueKey: getValidationMessage(LastNameValueKey),
      RegisterEmailValueKey: getValidationMessage(RegisterEmailValueKey),
      RegisterPasswordValueKey: getValidationMessage(RegisterPasswordValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _RegisterViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _RegisterViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      FirstNameValueKey: getValidationMessage(FirstNameValueKey),
      LastNameValueKey: getValidationMessage(LastNameValueKey),
      RegisterEmailValueKey: getValidationMessage(RegisterEmailValueKey),
      RegisterPasswordValueKey: getValidationMessage(RegisterPasswordValueKey),
    });
