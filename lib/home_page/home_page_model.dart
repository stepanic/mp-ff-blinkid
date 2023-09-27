import '/components/dp_demo1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DpDemo1 component.
  late DpDemo1Model dpDemo1Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dpDemo1Model = createModel(context, () => DpDemo1Model());
  }

  void dispose() {
    unfocusNode.dispose();
    dpDemo1Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
