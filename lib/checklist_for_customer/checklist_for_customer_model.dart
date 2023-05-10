import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/checklist_for_cleaner/checklist_for_cleaner_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home_page/home_page_widget.dart';
import '/homescreen/homescreen_widget.dart';
import '/shopping_cart/shopping_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChecklistForCustomerModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;
  // State field(s) for Checkbox widget.
  bool? checkboxValue7;
  // State field(s) for Checkbox widget.
  bool? checkboxValue8;
  // State field(s) for Checkbox widget.
  bool? checkboxValue9;
  // State field(s) for Checkbox widget.
  bool? checkboxValue10;
  // State field(s) for Checkbox widget.
  bool? checkboxValue11;
  // State field(s) for Checkbox widget.
  bool? checkboxValue12;
  // State field(s) for Checkbox widget.
  bool? checkboxValue13;
  // State field(s) for Checkbox widget.
  bool? checkboxValue14;
  // State field(s) for Checkbox widget.
  bool? checkboxValue15;
  // State field(s) for Checkbox widget.
  bool? checkboxValue16;
  // State field(s) for Checkbox widget.
  bool? checkboxValue17;
  // State field(s) for Checkbox widget.
  bool? checkboxValue18;
  // State field(s) for Checkbox widget.
  bool? checkboxValue19;
  // State field(s) for Checkbox widget.
  bool? checkboxValue20;
  // State field(s) for Checkbox widget.
  bool? checkboxValue21;
  // State field(s) for Checkbox widget.
  bool? checkboxValue22;
  // State field(s) for Checkbox widget.
  bool? checkboxValue23;
  // State field(s) for Checkbox widget.
  bool? checkboxValue24;
  // State field(s) for Checkbox widget.
  bool? checkboxValue25;
  // State field(s) for Checkbox widget.
  bool? checkboxValue26;
  // State field(s) for Checkbox widget.
  bool? checkboxValue27;
  // State field(s) for Checkbox widget.
  bool? checkboxValue28;
  // State field(s) for Checkbox widget.
  bool? checkboxValue29;
  // State field(s) for Checkbox widget.
  bool? checkboxValue30;
  // State field(s) for Checkbox widget.
  bool? checkboxValue31;
  // State field(s) for Checkbox widget.
  bool? checkboxValue32;
  // State field(s) for Checkbox widget.
  bool? checkboxValue33;
  // State field(s) for Checkbox widget.
  bool? checkboxValue34;
  // State field(s) for Checkbox widget.
  bool? checkboxValue35;
  // State field(s) for Checkbox widget.
  bool? checkboxValue36;
  // State field(s) for Checkbox widget.
  bool? checkboxValue37;
  // State field(s) for Checkbox widget.
  bool? checkboxValue38;
  // State field(s) for Checkbox widget.
  bool? checkboxValue39;
  // State field(s) for Checkbox widget.
  bool? checkboxValue40;
  // State field(s) for Checkbox widget.
  bool? checkboxValue41;
  // State field(s) for Checkbox widget.
  bool? checkboxValue42;
  // State field(s) for Checkbox widget.
  bool? checkboxValue43;
  // State field(s) for Checkbox widget.
  bool? checkboxValue44;
  // State field(s) for Checkbox widget.
  bool? checkboxValue45;
  // State field(s) for Checkbox widget.
  bool? checkboxValue46;
  // State field(s) for Checkbox widget.
  bool? checkboxValue47;
  // State field(s) for Checkbox widget.
  bool? checkboxValue48;
  // State field(s) for Checkbox widget.
  bool? checkboxValue49;
  // State field(s) for Checkbox widget.
  bool? checkboxValue50;
  // State field(s) for Checkbox widget.
  bool? checkboxValue51;
  // State field(s) for Checkbox widget.
  bool? checkboxValue52;
  // State field(s) for Checkbox widget.
  bool? checkboxValue53;
  // State field(s) for Checkbox widget.
  bool? checkboxValue54;
  // State field(s) for Checkbox widget.
  bool? checkboxValue55;
  // State field(s) for Checkbox widget.
  bool? checkboxValue56;
  // State field(s) for Checkbox widget.
  bool? checkboxValue57;
  // State field(s) for Checkbox widget.
  bool? checkboxValue58;
  // State field(s) for Checkbox widget.
  bool? checkboxValue59;
  // State field(s) for Checkbox widget.
  bool? checkboxValue60;
  // State field(s) for Checkbox widget.
  bool? checkboxValue61;
  // State field(s) for Checkbox widget.
  bool? checkboxValue62;
  // State field(s) for Checkbox widget.
  bool? checkboxValue63;
  // State field(s) for Checkbox widget.
  bool? checkboxValue64;
  // State field(s) for Checkbox widget.
  bool? checkboxValue65;
  // State field(s) for Checkbox widget.
  bool? checkboxValue66;
  // State field(s) for Checkbox widget.
  bool? checkboxValue67;
  // State field(s) for Checkbox widget.
  bool? checkboxValue68;
  // State field(s) for Checkbox widget.
  bool? checkboxValue69;
  // State field(s) for Checkbox widget.
  bool? checkboxValue70;
  // State field(s) for Checkbox widget.
  bool? checkboxValue71;
  // State field(s) for Checkbox widget.
  bool? checkboxValue72;
  // State field(s) for Checkbox widget.
  bool? checkboxValue73;
  // State field(s) for Checkbox widget.
  bool? checkboxValue74;
  // State field(s) for Checkbox widget.
  bool? checkboxValue75;
  // State field(s) for Checkbox widget.
  bool? checkboxValue76;
  // State field(s) for Checkbox widget.
  bool? checkboxValue77;
  // State field(s) for Checkbox widget.
  bool? checkboxValue78;
  // State field(s) for Checkbox widget.
  bool? checkboxValue79;
  // State field(s) for Checkbox widget.
  bool? checkboxValue80;
  // State field(s) for Checkbox widget.
  bool? checkboxValue81;
  // State field(s) for Checkbox widget.
  bool? checkboxValue82;
  // State field(s) for Checkbox widget.
  bool? checkboxValue83;
  // State field(s) for Checkbox widget.
  bool? checkboxValue84;
  // State field(s) for Checkbox widget.
  bool? checkboxValue85;
  // State field(s) for Checkbox widget.
  bool? checkboxValue86;
  // State field(s) for Checkbox widget.
  bool? checkboxValue87;
  // State field(s) for Checkbox widget.
  bool? checkboxValue88;
  // State field(s) for Checkbox widget.
  bool? checkboxValue89;
  // State field(s) for Checkbox widget.
  bool? checkboxValue90;
  // State field(s) for Checkbox widget.
  bool? checkboxValue91;
  // State field(s) for Checkbox widget.
  bool? checkboxValue92;
  // State field(s) for Checkbox widget.
  bool? checkboxValue93;
  // State field(s) for Checkbox widget.
  bool? checkboxValue94;
  // State field(s) for Checkbox widget.
  bool? checkboxValue95;
  // State field(s) for Checkbox widget.
  bool? checkboxValue96;
  // State field(s) for Checkbox widget.
  bool? checkboxValue97;
  // State field(s) for Checkbox widget.
  bool? checkboxValue98;
  // State field(s) for Checkbox widget.
  bool? checkboxValue99;
  // State field(s) for Checkbox widget.
  bool? checkboxValue100;
  // State field(s) for Checkbox widget.
  bool? checkboxValue101;
  // State field(s) for Checkbox widget.
  bool? checkboxValue102;
  // State field(s) for Checkbox widget.
  bool? checkboxValue103;
  // State field(s) for Checkbox widget.
  bool? checkboxValue104;
  // State field(s) for Checkbox widget.
  bool? checkboxValue105;
  // State field(s) for Checkbox widget.
  bool? checkboxValue106;
  // State field(s) for Checkbox widget.
  bool? checkboxValue107;
  // State field(s) for Checkbox widget.
  bool? checkboxValue108;
  // State field(s) for Checkbox widget.
  bool? checkboxValue109;
  // State field(s) for Checkbox widget.
  bool? checkboxValue110;
  // State field(s) for Checkbox widget.
  bool? checkboxValue111;
  // State field(s) for Checkbox widget.
  bool? checkboxValue112;
  // State field(s) for Checkbox widget.
  bool? checkboxValue113;
  // State field(s) for Checkbox widget.
  bool? checkboxValue114;
  // State field(s) for Checkbox widget.
  bool? checkboxValue115;
  // State field(s) for Checkbox widget.
  bool? checkboxValue116;
  // State field(s) for Checkbox widget.
  bool? checkboxValue117;
  // State field(s) for Checkbox widget.
  bool? checkboxValue118;
  // State field(s) for Checkbox widget.
  bool? checkboxValue119;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Additional helper methods are added here.

}
