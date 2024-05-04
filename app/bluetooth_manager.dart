import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:convert';
import 'dart:typed_data';

class BluetoothManager {
  FlutterBluetoothSerial bluetooth = FlutterBluetoothSerial.instance;
  List<BluetoothDiscoveryResult> scanResults = [];
  BluetoothDevice selectedDevice = BluetoothDevice(address: '');
  BluetoothConnection? connection;
  bool connected = false;

  Future<void> requestBluetoothPermission() async {
    bool permissionGranted = false;
    while (!permissionGranted) {
      PermissionStatus status = await Permission.bluetooth.request();
      if (status.isGranted) {
        permissionGranted = true;
        scanForDevices();
      }
    }
  }

  void scanForDevices() {
    bluetooth.startDiscovery().listen((result) {
      scanResults.add(result);
    });
  }

  Future<void> connectToDevice(BluetoothDevice device) async {
    connection = await BluetoothConnection.toAddress(device.address);
    if (connection!.isConnected) {
      connected = true;
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
}
