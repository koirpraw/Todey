import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundAppleLoginWidget extends StatefulWidget {
  const RoundAppleLoginWidget({Key key}) : super(key: key);

  @override
  _RoundAppleLoginWidgetState createState() => _RoundAppleLoginWidgetState();
}

class _RoundAppleLoginWidgetState extends State<RoundAppleLoginWidget> {
  @override
  Widget build(BuildContext context) {
    return isAndroid
        ? Container()
        : FFButtonWidget(
            onPressed: () async {
              final user = await signInWithApple(context);
              if (user == null) {
                return;
              }
              await Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => NavBarPage(initialPage: 'todo_home'),
                ),
                (r) => false,
              );
            },
            text: '',
            icon: FaIcon(
              FontAwesomeIcons.apple,
              size: 30,
            ),
            options: FFButtonOptions(
              width: 60,
              height: 60,
              color: Colors.white,
              textStyle: GoogleFonts.getFont(
                'Roboto',
                color: Colors.black,
                fontSize: 17,
              ),
              elevation: 4,
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 0,
              ),
              borderRadius: 30,
            ),
          );
  }
}
