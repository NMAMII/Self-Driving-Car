import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'auth/firebase_auth/firebase_user_provider.dart';
import 'auth/firebase_auth/auth_util.dart';
import 'backend/firebase/firebase_config.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'index.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart' as fbp;
import 'dart:convert';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initFirebase();
  await FlutterFlowTheme.initialize();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  fbp.BluetoothCharacteristic? characteristic;
  List<BluetoothDevice> _devicesList = [];
  bool isDisconnecting = false;
  bool _connected = false;
  BluetoothDevice? _device;
  BluetoothConnection? connection; // Declare the connection property

  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;

  void sendMessageToBluetooth(String val) async {
    if (connection != null && connection!.isConnected) {
      connection!.output.add(Uint8List.fromList(utf8.encode(val + "\r\n")));
      await connection!.output.allSent;
    }
  }
}


class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = ThemeMode.light;
  ThemeMode themeMode = FlutterFlowTheme.themeMode;
  late Stream<BaseAuthUser> userStream;
  BaseAuthUser? initialUser;
  bool displaySplashImage = true;
  final authUserSub = authenticatedUserStream.listen((_) {});
  BluetoothConnection? connection;
  bool connected = false;
  // Bluetooth
  late FlutterBluetoothSerial bluetooth;
  List<BluetoothDiscoveryResult> scanResults = [];
  BluetoothDevice? selectedDevice; // Track the selected Bluetooth device

  @override
  void initState() {
    super.initState();
    userStream = test1FirebaseUserStream()
      ..listen((user) => initialUser ?? setState(() => initialUser = user));
    jwtTokenStream.listen((_) {});
    Future.delayed(
      Duration(seconds: 1),
          () => setState(() => displaySplashImage = false),
    );
    // Bluetooth initialization
    bluetooth = FlutterBluetoothSerial.instance;
    // Call the Bluetooth permission request loop
    requestBluetoothPermission();
  }

  @override
  void dispose() {
    authUserSub.cancel();
    super.dispose();
  }

  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
  }

  void setThemeMode(ThemeMode mode) => setState(() {
    _themeMode = mode;
    FlutterFlowTheme.saveThemeMode(mode);
  });

  void scanForDevices() {
    bluetooth.startDiscovery().listen((result) {
      setState(() {
        scanResults.add(result);
      });
    });
  }

  void requestBluetoothPermission() async {
    bool permissionGranted = false;
    while (!permissionGranted) {
      PermissionStatus status = await Permission.bluetooth.request();
      if (status.isGranted) {
        permissionGranted = true;
        scanForDevices();
      }
    }
  }

  Future<void> connectToDevice(BluetoothDevice device) async {
    connection = await BluetoothConnection.toAddress(device.address);
    if (connection!.isConnected) {
      setState(() {
        connected = true;
      });
    } else {
      // Connection failed
      // Handle the error accordingly
    }
  }

  void sendMessageToBluetooth(String val) async {
    if (connection != null && connection!.isConnected) {
      connection!.output.add(Uint8List.fromList(utf8.encode(val + "\r\n")));
      await connection!.output.allSent;
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test1',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: _themeMode,
      home: initialUser == null || displaySplashImage
          ? Builder(
        builder: (context) => Container(
          color: Colors.transparent,
          child: Image.asset(
            'assets/images/martin-katler-DiJR_M1Mv_A-unsplash.jpg',
            fit: BoxFit.cover,
          ),
        ),
      )
          : currentUser!.loggedIn
          ? NavBarPage()
          : LoginWidget(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key? key, this.initialPage, this.page}) : super(key: key);

  final String? initialPage;
  final Widget? page;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'HomePage';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'HomePage': HomePageWidget(),
      'carManualMode': CarManualModeWidget(),
      'profilePage': ProfilePageWidget(),
    };

    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);
    return Scaffold(
      body: _currentPage ?? tabs[_currentPageName],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() {
          _currentPage = null;
          _currentPageName = tabs.keys.toList()[i];
        }),
        backgroundColor: FlutterFlowTheme.of(context).customColor1,
        selectedItemColor: FlutterFlowTheme.of(context).primary,
        unselectedItemColor: FlutterFlowTheme.of(context).grayLight,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 24.0,
            ),
            activeIcon: Icon(
              Icons.home,
              size: 24.0,
            ),
            label: '•',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.power_settings_new,
              size: 24.0,
            ),
            label: '•',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.control_camera_outlined,
              size: 24.0,
            ),
            label: '•',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              size: 24.0,
            ),
            activeIcon: Icon(
              Icons.account_circle_rounded,
              size: 24.0,
            ),
            label: '•',
            tooltip: '',
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 0.0, right: 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DropdownButton<BluetoothDevice>(
              value: MyApp.of(context).selectedDevice,
              onChanged: (device) {
                setState(() {
                  MyApp.of(context).selectedDevice = device;
                });
              },
              items: MyApp.of(context).scanResults.map<DropdownMenuItem<BluetoothDevice>>(
                    (result) {
                  BluetoothDevice device = result.device;
                  return DropdownMenuItem<BluetoothDevice>(
                    value: device,
                    child: Row(
                      children: [
                        Text(device.name ?? 'Unknown'),
                        SizedBox(width: 8),
                        ElevatedButton(
                          onPressed: () async {
                            if (MyApp.of(context).connected) {
                              try {
                                await MyApp.of(context).connection!.close();
                                setState(() {
                                  MyApp.of(context).connected = false;
                                });
                              } catch (error) {
                                // Disconnection failed
                                // Handle the error accordingly
                              }
                            } else {
                              // Connect code here
                              BluetoothDevice selectedDevice = device;
                              MyApp.of(context).selectedDevice = device;
                              try {
                                BluetoothConnection connection = await BluetoothConnection.toAddress(selectedDevice.address);
                                MyApp.of(context).connection = connection;
                                if (MyApp.of(context).connection!.isConnected) {
                                  setState(() {
                                    MyApp.of(context).connected = true;
                                  });
                                }
                              } catch (error) {
                                // Connection failed
                                // Handle the error accordingly
                              }
                            }
                          },
                          child: Text(MyApp.of(context).connected ? 'Disconnect' : 'Connect'),
                        ),
                      ],
                    ),
                  );
                },
              ).toList(),
            ),

            SizedBox(width: 2),
            Icon(Icons.bluetooth),
          ],
        ),
      ),
    );

  }
}
