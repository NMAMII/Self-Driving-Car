import '../../flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'car_driving_model.dart';
export 'car_driving_model.dart';
import '/main.dart';

class CarDrivingWidget extends StatefulWidget {
  const CarDrivingWidget({Key? key}) : super(key: key);

  @override
  _CarDrivingWidgetState createState() => _CarDrivingWidgetState();
}

class _CarDrivingWidgetState extends State<CarDrivingWidget>
    with TickerProviderStateMixin {
  late CarDrivingModel _model;

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
    'textOnPageLoadAnimation': AnimationInfo(
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
          begin: Offset(0.0, 51.0),
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
          begin: Offset(0.0, 51.0),
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
    _model = createModel(context, () => CarDrivingModel());
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
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 50.0, 24.0, 0.0),
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
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 24.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'T\'Alva Model 1',
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
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/carFull@2x.png',
              width: MediaQuery.of(context).size.width * 1.0,
              height: 200.0,
              fit: BoxFit.cover,
            ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  ' ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Lexend Deca',
                    color: FlutterFlowTheme.of(context).dark400,
                    fontWeight: FontWeight.w100,
                    fontSize: 92.0,
                  ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' ',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ],
              ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation1']!),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' ',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ],
              ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation2']!),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: Text(
                          'Charge',
                          style: FlutterFlowTheme.of(context).bodySmall,
                        ),
                      ),
                      Text(
                        '70%',
                        style:
                        FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).dark400,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: Text(
                          'Range',
                          style: FlutterFlowTheme.of(context).bodySmall,
                        ),
                      ),
                      Text(
                        '329m',
                        style:
                        FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).dark400,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: Text(
                          'Status',
                          style: FlutterFlowTheme.of(context).bodySmall,
                        ),
                      ),
                      Text(
                        'Good',
                        style:
                        FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF4B39EF),
                        ),
                      ),
                    ],
                  ),
                ],
              ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation3']!),
            ),
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
                                'Car is Avoiding Obstacles',
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
                                  'Put your car in park in order to turn your car off',
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
                      child: FFButtonWidget(
                        onPressed: () {
                          MyApp.of(context).sendMessageToBluetooth("1");
                        },
                        text: '',
                        icon: Icon(
                          Icons.toys,
                          size: 50,
                        ),
                        options: FFButtonOptions(
                          height: 40,
                          padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: Color(0xFF4B39EF),
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
                  ),
                ],
              ),
            ).animateOnPageLoad(animationsMap['stackOnPageLoadAnimation']!),
          ],
        ),
      ),
    );
  }
}
