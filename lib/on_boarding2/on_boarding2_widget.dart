import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../on_boarding3/on_boarding3_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding2Widget extends StatefulWidget {
  const OnBoarding2Widget({Key key}) : super(key: key);

  @override
  _OnBoarding2WidgetState createState() => _OnBoarding2WidgetState();
}

class _OnBoarding2WidgetState extends State<OnBoarding2Widget> {
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
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(60, 0, 0, 0),
                    child: Text(
                      'Get more organized and stay on top of  your\nplans and goals.',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.bodyText2.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.secondaryColor,
                      ),
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
                  child: SvgPicture.asset(
                    'assets/images/shop2.svg',
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
                    color: FlutterFlowTheme.primaryColor,
                    size: 12,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                  child: FaIcon(
                    FontAwesomeIcons.solidCircle,
                    color: FlutterFlowTheme.secondaryColor,
                    size: 12,
                  ),
                ),
              ],
            ),
            FFButtonWidget(
              onPressed: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    duration: Duration(milliseconds: 400),
                    reverseDuration: Duration(milliseconds: 400),
                    child: OnBoarding3Widget(),
                  ),
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
