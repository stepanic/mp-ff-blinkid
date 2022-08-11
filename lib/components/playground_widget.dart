import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaygroundWidget extends StatefulWidget {
  const PlaygroundWidget({Key? key}) : super(key: key);

  @override
  _PlaygroundWidgetState createState() => _PlaygroundWidgetState();
}

class _PlaygroundWidgetState extends State<PlaygroundWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional(0, 0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 90),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'm56hsx6t' /* iOS License */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'gwbaxtdx' /* <IOS_LICENSE> */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: FFLocalizations.of(context).getText(
                        'kzadkitu' /* Scan */,
                      ),
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
