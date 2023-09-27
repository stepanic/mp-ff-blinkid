import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dp_demo1_model.dart';
export 'dp_demo1_model.dart';

class DpDemo1Widget extends StatefulWidget {
  const DpDemo1Widget({Key? key}) : super(key: key);

  @override
  _DpDemo1WidgetState createState() => _DpDemo1WidgetState();
}

class _DpDemo1WidgetState extends State<DpDemo1Widget> {
  late DpDemo1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DpDemo1Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

<<<<<<< HEAD
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
<<<<<<< HEAD
        color: FlutterFlowTheme.of(context).info,
=======
        //LOCAL_START
        color: Colors.red,
        //LOCAL_END
>>>>>>> 38ffc693019a1c1b0e16826d2ba5720289542d23
      ),
      child: Align(
        alignment: AlignmentDirectional(0.00, 0.00),
        child: Text(
          FFLocalizations.of(context).getText(
            '734wo8md' /* dp 5 */,
=======
    return Padding(
      //LOCAL_START
      padding: EdgeInsetsDirectional.fromSTEB(200.0, 0.0, 57.0, 0.0),
      // padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.01, 0.0),
      //LOCAL_END
      child: Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).info,
        ),
        child: Align(
          alignment: AlignmentDirectional(0.00, 0.00),
          child: Text(
            FFLocalizations.of(context).getText(
              '734wo8md' /* dp 5 */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium,
>>>>>>> 893d60b23bb6369269a0e8ae196d420450b57ae3
          ),
        ),
      ),
    );
  }
}
