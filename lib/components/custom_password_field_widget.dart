import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPasswordFieldWidget extends StatefulWidget {
  const CustomPasswordFieldWidget({Key key}) : super(key: key);

  @override
  _CustomPasswordFieldWidgetState createState() =>
      _CustomPasswordFieldWidgetState();
}

class _CustomPasswordFieldWidgetState extends State<CustomPasswordFieldWidget> {
  TextEditingController passwordController;
  bool passwordVisibility;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Align(
        alignment: AlignmentDirectional(-0.15, -0.25),
        child: Container(
          width: double.infinity,
          height: 100,
          constraints: BoxConstraints(
            maxWidth: double.infinity,
            maxHeight: double.infinity,
          ),
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F5),
          ),
          child: Align(
            alignment: AlignmentDirectional(0, 0.45),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0, -0.2),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: !passwordVisibility,
                    decoration: InputDecoration(
                      hintText: 'Enter your Password',
                      hintStyle: FlutterFlowTheme.bodyText1,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.text,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.text,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                      ),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => passwordVisibility = !passwordVisibility,
                        ),
                        child: Icon(
                          passwordVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.bodyText1,
                    validator: (val) {
                      if (val.isEmpty) {
                        return 'Field is required';
                      }

                      return null;
                    },
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.65, -0.7),
                  child: Container(
                    width: 75,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                      child: Text(
                        'Password',
                        style: FlutterFlowTheme.bodyText1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
