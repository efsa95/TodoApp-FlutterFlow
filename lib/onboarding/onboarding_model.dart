import '/flutter_flow/flutter_flow_util.dart';
import 'onboarding_widget.dart' show OnboardingWidget;
import 'package:flutter/material.dart';

class OnboardingModel extends FlutterFlowModel<OnboardingWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for setName widget.
  FocusNode? setNameFocusNode;
  TextEditingController? setNameTextController;
  String? Function(BuildContext, String?)? setNameTextControllerValidator;
  // State field(s) for setPhone widget.
  FocusNode? setPhoneFocusNode;
  TextEditingController? setPhoneTextController;
  String? Function(BuildContext, String?)? setPhoneTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    setNameFocusNode?.dispose();
    setNameTextController?.dispose();

    setPhoneFocusNode?.dispose();
    setPhoneTextController?.dispose();
  }
}
