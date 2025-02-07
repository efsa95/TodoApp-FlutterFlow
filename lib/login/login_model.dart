import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for SignupEmail widget.
  FocusNode? signupEmailFocusNode;
  TextEditingController? signupEmailTextController;
  String? Function(BuildContext, String?)? signupEmailTextControllerValidator;
  String? _signupEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for SignupPassword widget.
  FocusNode? signupPasswordFocusNode;
  TextEditingController? signupPasswordTextController;
  late bool signupPasswordVisibility;
  String? Function(BuildContext, String?)?
      signupPasswordTextControllerValidator;
  String? _signupPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for SignupConfirmPass widget.
  FocusNode? signupConfirmPassFocusNode;
  TextEditingController? signupConfirmPassTextController;
  late bool signupConfirmPassVisibility;
  String? Function(BuildContext, String?)?
      signupConfirmPassTextControllerValidator;
  String? _signupConfirmPassTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for Loginbox widget.
  FocusNode? loginboxFocusNode;
  TextEditingController? loginboxTextController;
  String? Function(BuildContext, String?)? loginboxTextControllerValidator;
  String? _loginboxTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for Loginpassword widget.
  FocusNode? loginpasswordFocusNode;
  TextEditingController? loginpasswordTextController;
  late bool loginpasswordVisibility;
  String? Function(BuildContext, String?)? loginpasswordTextControllerValidator;
  String? _loginpasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    signupEmailTextControllerValidator = _signupEmailTextControllerValidator;
    signupPasswordVisibility = false;
    signupPasswordTextControllerValidator =
        _signupPasswordTextControllerValidator;
    signupConfirmPassVisibility = false;
    signupConfirmPassTextControllerValidator =
        _signupConfirmPassTextControllerValidator;
    loginboxTextControllerValidator = _loginboxTextControllerValidator;
    loginpasswordVisibility = false;
    loginpasswordTextControllerValidator =
        _loginpasswordTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    signupEmailFocusNode?.dispose();
    signupEmailTextController?.dispose();

    signupPasswordFocusNode?.dispose();
    signupPasswordTextController?.dispose();

    signupConfirmPassFocusNode?.dispose();
    signupConfirmPassTextController?.dispose();

    loginboxFocusNode?.dispose();
    loginboxTextController?.dispose();

    loginpasswordFocusNode?.dispose();
    loginpasswordTextController?.dispose();
  }
}
