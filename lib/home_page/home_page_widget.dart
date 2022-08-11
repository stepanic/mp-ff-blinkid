import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            FFLocalizations.of(context).getText(
              'qckk2848' /* BlinkID FF */,
            ),
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22,
                ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.FlutterFlowBlinkID(
                      width: double.infinity,
                      height: double.infinity,
                      iosLicense: FFAppState().BlinkIDiOSLicense,
                      androidLicense: FFAppState().BlinkIDAndroidLicense,
                      onScanningDone: () async {
                        setState(() {});
                      },
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'djzk7d6g' /* First name from scan:  */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          FFAppState().BlinkIDResultFirstName,
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
