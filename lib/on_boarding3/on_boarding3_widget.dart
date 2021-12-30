import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../signup/signup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding3Widget extends StatefulWidget {
  const OnBoarding3Widget({Key key}) : super(key: key);

  @override
  _OnBoarding3WidgetState createState() => _OnBoarding3WidgetState();
}

class _OnBoarding3WidgetState extends State<OnBoarding3Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Todoey',
                    style: FlutterFlowTheme.title3.override(
                      fontFamily: 'Roboto',
                      color: FlutterFlowTheme.primaryColor,
                      fontSize: 36,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Text(
                    'Archive your finished task.\ncross out the completed task.\nsit back and relax.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.bodyText2.override(
                      fontFamily: 'Roboto',
                      color: FlutterFlowTheme.secondaryColor,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 48, 0, 48),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Color(0xFFF5F5F5),
                elevation: 0,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(48, 24, 48, 0),
                  child: Image.asset(
                    'assets/images/df3hg_',
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.solidCircle,
                  color: FlutterFlowTheme.secondaryColor,
                  size: 12,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                  child: FaIcon(
                    FontAwesomeIcons.solidCircle,
                    color: FlutterFlowTheme.secondaryColor,
                    size: 12,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                  child: FaIcon(
                    FontAwesomeIcons.solidCircle,
                    color: FlutterFlowTheme.primaryColor,
                    size: 12,
                  ),
                ),
              ],
            ),
            FFButtonWidget(
              onPressed: () async {
                await Navigator.pushAndRemoveUntil(
                  context,
                  PageTransition(
                    type: PageTransitionType.bottomToTop,
                    duration: Duration(milliseconds: 400),
                    reverseDuration: Duration(milliseconds: 400),
                    child: SignupWidget(),
                  ),
                  (r) => false,
                );
              },
              text: 'Continue',
              options: FFButtonOptions(
                width: 240,
                height: 40,
                color: FlutterFlowTheme.primaryColor,
                textStyle: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
