import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main.dart';
import 'package:flutter/material.dart';
import 'package:test1/bluetooth_manager.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'car_manual_mode_model.dart';
export 'car_manual_mode_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CarManualModeWidget extends StatefulWidget {
  const CarManualModeWidget({Key? key}) : super(key: key);

  @override
  _CarManualModeWidgetState createState() => _CarManualModeWidgetState();
}

class _CarManualModeWidgetState extends State<CarManualModeWidget>
    with TickerProviderStateMixin {
  MyApp myApp = MyApp();
  BluetoothManager bluetoothManager = BluetoothManager();

  late CarManualModeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.5,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(100.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 60.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 60.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 60.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'stackOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 78.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 29.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'iconOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 50.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarManualModeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).customColor1,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Your Car',
                    style: FlutterFlowTheme.of(context).bodySmall,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 24.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ADAS',
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).dark400,
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: FlutterFlowTheme.of(context).dark400,
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      buttonSize: 46.0,
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).customColor1,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                NavBarPage(initialPage: 'HomePage'),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              width: 500,
              child: WebView(
                javascriptMode: JavascriptMode.unrestricted,
                initialUrl: "http://192.168.110.236", ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  '  ',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    shape: BoxShape.circle,
                  ),
                  child: FFButtonWidget(
                    onPressed: () {
                      MyApp.of(context).sendMessageToBluetooth('F');
                    },
                    text: '',
                    icon: Icon(
                      Icons.arrow_upward_rounded,
                      size:50,
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF3991D2),
                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                      ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Add SizedBox to create space between buttons
              ],
            ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation3']!),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 75.0,
                    height: 75.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      shape: BoxShape.circle,
                    ),
                    child: FFButtonWidget(
                      onPressed: () {
                        MyApp.of(context).sendMessageToBluetooth('L');
                      },
                      text: '',
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        size: 50.0,
                      ),
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFF3991D2),
                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Outfit',
                          color: Colors.white,
                        ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // Add SizedBox to create space between buttons
                  FFButtonWidget(
                    onPressed: () {
                      MyApp.of(context).sendMessageToBluetooth('S');
                    },
                    text: '', // Add your button text here
                    icon: Icon(
                      Icons.stop_circle, // Add your desired icon
                      size: 50.0,
                    ),
                    options: FFButtonOptions(
                      width: 75.0,
                      height: 75.0,
                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF3991D2),
                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                      ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                  SizedBox(width: 20), // Add SizedBox to create space between buttons
                  Container(
                    width: 75.0,
                    height: 75.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      shape: BoxShape.circle,
                    ),
                    child: FFButtonWidget(
                      onPressed: () {
                        MyApp.of(context).sendMessageToBluetooth('R');
                      },
                      text: '',
                      icon: Icon(
                        Icons.arrow_forward_rounded,
                        size: 50.0,
                      ),
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFF3991D2),
                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Outfit',
                          color: Colors.white,
                        ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                ],
              ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation2']!),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    shape: BoxShape.circle,
                  ),
                  child: FFButtonWidget(
                    onPressed: () {
                      MyApp.of(context).sendMessageToBluetooth('B');
                    },
                    text: '',
                    icon: Icon(
                      Icons.arrow_downward_rounded,
                      size: 50.0,
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF3991D2),
                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                      ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Add SizedBox to create space between buttons
              ],
            ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation3']!),

            Container(
              height: 200.0,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiary,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 60.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Car is in Manual Mode',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context)
                                      .alternate,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 16.0, 24.0),
                                child: Text(
                                  'You can manually control your car',
                                  style: FlutterFlowTheme.of(context).bodySmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -0.75),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFF3991D2),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 7,
                            color: Color(0x8E000000),
                            offset: Offset(0, 3),
                          )
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: FFButtonWidget(
                        onPressed: () {
                          MyApp.of(context).sendMessageToBluetooth("4");
                        },
                        text: '',
                        icon: Icon(
                          Icons.control_camera_outlined,
                          size: 50,
                        ),
                        options: FFButtonOptions(
                          height: 40,
                          padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: Color(0xFF3991D2),
                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Outfit',
                            color: Colors.white,
                          ),
                          elevation: 3,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
                  )
                ],
              ),
            ).animateOnPageLoad(animationsMap['stackOnPageLoadAnimation']!),
          ],
        ),
      ),
    );
  }
}