int trigger_pin=4;
int echo_pin=7;
int buzzer_pin=13;
int time;
int distance;
void setup()
{
  Serial.begin(9600);
  pinMode(4,OUTPUT);
  pinMode(7,INPUT);
  pinMode(13,OUTPUT);
}
void loop()
{
 digitalWrite(4,HIGH);
 delayMicroseconds(10);
 digitalWrite(4,LOW);
 time=pulseIn(7,HIGH);
 distance=(time*0.034)/2;

if(distance<=50)
{
  Serial.println("Door Open ");
  Serial.print("Distance");
  Serial.println(distance);
  digitalWrite(13,HIGH);
  delay(500);
}
else
{
  Serial.println("Door Open ");
  Serial.print("Distance");
  Serial.println(distance);
  digitalWrite(13,LOW);
  delay(500);
}
}
  