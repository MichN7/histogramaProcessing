
long tiempo;
long distancia;
int trigger=9;
int echo=10;
int contador=0;
void setup() {
  Serial.begin(9600);
  pinMode(trigger,OUTPUT);
  pinMode(echo,INPUT);
  
}


void loop() {
digitalWrite(trigger,LOW);
delayMicroseconds(5);
digitalWrite(trigger,HIGH);
delayMicroseconds(10);
tiempo=pulseIn(echo,HIGH);
distancia=long(.017*tiempo);
if(distancia<55 && distancia>25){

contador++;

if(contador >2){
Serial.println("#");
//Serial.println(distancia);
delay(5000);
contador=0;
}
}
else{
contador=0;
}
//Serial.println(distancia);
delay(800);
  
}
