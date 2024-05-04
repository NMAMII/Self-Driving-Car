#include <AFMotor.h>
#include <SoftwareSerial.h>

AF_DCMotor motor1(1);
AF_DCMotor motor2(2);
SoftwareSerial bluetoothSerial(9, 10); // RX, TX pins for the Bluetooth module

void setup() {
  bluetoothSerial.begin(9600); // Start Bluetooth serial communication
  motor1.setSpeed(255); // Set the maximum speed for Motor 1
  motor2.setSpeed(255); // Set the maximum speed for Motor 2
}

void loop() {
  if (bluetoothSerial.available()) { // Check if there's data available from the Bluetooth module
    char command = bluetoothSerial.read(); // Read the incoming command

    if (command == 'F') { // move forward (both motors rotate in forward direction)
      motor1.run(FORWARD);
      motor2.run(FORWARD);
    }
    else if (command == 'B') { // move reverse (both motors rotate in reverse direction)
      motor1.run(BACKWARD);
      motor2.run(BACKWARD);
    }
    else if (command == 'L') { // turn right (left motor rotates in forward direction, right motor doesn't rotate)
      motor1.run(FORWARD);
      motor2.run(RELEASE);
    }
    else if (command == 'R') { // turn left (right motor rotates in forward direction, left motor doesn't rotate)
      motor1.run(RELEASE);
      motor2.run(FORWARD);
    }
    else if (command == 'S') { // STOP (both motors stop)
      motor1.run(RELEASE);
      motor2.run(RELEASE);
    }
  }
}