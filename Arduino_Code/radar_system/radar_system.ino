#include <ESP32Servo.h>

Servo radarServo;

const int trigPin = 5;
const int echoPin = 17;
const int servoPin = 18;

long duration;
int distance;

void setup() {
  Serial.begin(115200);

  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);

  radarServo.setPeriodHertz(50);
  radarServo.attach(servoPin, 500, 2400);
}

void loop() {

  for (int angle = 0; angle <= 180; angle++) {

    radarServo.write(angle);
    delay(30);

    distance = getDistance();

    Serial.print(angle);
    Serial.print(",");
    Serial.print(distance);
    Serial.print(".");
  }

  for (int angle = 180; angle >= 0; angle--) {

    radarServo.write(angle);
    delay(30);

    distance = getDistance();

    Serial.print(angle);
    Serial.print(",");
    Serial.print(distance);
    Serial.print(".");
  }
}

int getDistance() {

  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);

  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);

  digitalWrite(trigPin, LOW);

  duration = pulseIn(echoPin, HIGH);

  distance = duration * 0.034 / 2;

  return distance;
}