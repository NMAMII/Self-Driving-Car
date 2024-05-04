import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/onboarding/onboarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddCarModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for carName widget.
  TextEditingController? carNameController;
  String? Function(BuildContext, String?)? carNameControllerValidator;
  // State field(s) for carColor widget.
  TextEditingController? carColorController;
  String? Function(BuildContext, String?)? carColorControllerValidator;
  // State field(s) for carMileage widget.
  TextEditingController? carMileageController;
  String? Function(BuildContext, String?)? carMileageControllerValidator;
  // State field(s) for tempDefault widget.
  TextEditingController? tempDefaultController;
  String? Function(BuildContext, String?)? tempDefaultControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    carNameController?.dispose();
    carColorController?.dispose();
    carMileageController?.dispose();
    tempDefaultController?.dispose();
  }

  /// Additional helper methods are added here.

}
