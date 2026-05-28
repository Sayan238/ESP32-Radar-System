import processing.serial.*;

Serial myPort;

String angle = "";
String distance = "";
String data = "";
String noObject;
float pixsDistance;
int iAngle, iDistance;
int index1 = 0;

PFont font;

void setup() {

  size(1400, 800);
  smooth();

  myPort = new Serial(this, "com6", 115200);

  myPort.bufferUntil('.');

  font = createFont("Arial", 20);
}

void draw() {

  fill(0, 15);
  noStroke();
  rect(0, 0, width, height);

  drawRadar();
  drawLine();
  drawObject();
  drawText();
}

void serialEvent(Serial myPort) {

  data = myPort.readStringUntil('.');

  data = data.substring(0, data.length()-1);

  index1 = data.indexOf(",");

  angle = data.substring(0, index1);
  distance = data.substring(index1+1, data.length());

  iAngle = int(angle);
  iDistance = int(distance);
}

void drawRadar() {

  pushMatrix();

  translate(width/2, height-height*0.074);

  noFill();
  strokeWeight(2);
  stroke(98,245,31);

  arc(0,0,width-width*0.0625,width-width*0.0625,PI,TWO_PI);
  arc(0,0,width-width*0.27,width-width*0.27,PI,TWO_PI);
  arc(0,0,width-width*0.479,width-width*0.479,PI,TWO_PI);
  arc(0,0,width-width*0.687,width-width*0.687,PI,TWO_PI);

  line(-width/2,0,width/2,0);

  for(int i=0; i<=180; i+=30) {
    line(0,0,
    (-width/2)*cos(radians(i)),
    (-width/2)*sin(radians(i)));
  }

  popMatrix();
}

void drawObject() {

  pushMatrix();

  translate(width/2,height-height*0.074);

  strokeWeight(9);
  stroke(255,10,10);

  pixsDistance = iDistance*4;

  if(iDistance < 40) {

    line(pixsDistance*cos(radians(iAngle)),
    -pixsDistance*sin(radians(iAngle)),
    (width-width*0.505)*cos(radians(iAngle)),
    -(width-width*0.505)*sin(radians(iAngle)));
  }

  popMatrix();
}

void drawLine() {

  pushMatrix();

  strokeWeight(9);
  stroke(30,250,60);

  translate(width/2,height-height*0.074);

  line(0,0,
  (width-width*0.505)*cos(radians(iAngle)),
  -(width-width*0.505)*sin(radians(iAngle)));

  popMatrix();
}

void drawText() {

  fill(98,245,31);

  textFont(font);

  text("Angle: " + iAngle + "°", 50, 50);
  text("Distance: " + iDistance + " cm", 50, 90);

  if(iDistance < 40) {
    text("OBJECT DETECTED", 50, 130);
  }
}
