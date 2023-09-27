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

    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        //LOCAL_START
        color: Colors.red,
        //LOCAL_END
      ),
      child: Align(
        alignment: AlignmentDirectional(0.00, 0.00),
        child: Text(
          FFLocalizations.of(context).getText(
            '734wo8md' /* dp 5 */,
          ),
          style: FlutterFlowTheme.of(context).bodyMedium,
        ),
      ),
    );
  }
}
