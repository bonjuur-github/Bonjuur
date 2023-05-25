import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for FullName widget.
  TextEditingController? fullNameController;
  String? Function(BuildContext, String?)? fullNameControllerValidator;
  // State field(s) for customerEmailAddress widget.
  TextEditingController? customerEmailAddressController;
  String? Function(BuildContext, String?)?
      customerEmailAddressControllerValidator;
  // State field(s) for customerPassword widget.
  TextEditingController? customerPasswordController;
  late bool customerPasswordVisibility;
  String? Function(BuildContext, String?)? customerPasswordControllerValidator;
  // State field(s) for customerPasswordConfirm widget.
  TextEditingController? customerPasswordConfirmController;
  late bool customerPasswordConfirmVisibility;
  String? Function(BuildContext, String?)?
      customerPasswordConfirmControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    customerPasswordVisibility = false;
    customerPasswordConfirmVisibility = false;
  }

  void dispose() {
    fullNameController?.dispose();
    customerEmailAddressController?.dispose();
    customerPasswordController?.dispose();
    customerPasswordConfirmController?.dispose();
  }

  /// Additional helper methods are added here.

}
