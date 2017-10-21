import processing.serial.*;
//int[] datos = {15,12, 10,5,3,8,2,1,0,9,10,11};
IntList datos = new IntList();
String portName="/dev/ttyACM0";
Serial port;
int i=0;
String valor;
void setup(){
  size(500,400);
  background(255);
  fill(255,0,0,30);
  port=new Serial(this,portName,9600);
  port.bufferUntil('\n');
   println(Serial.list()); 
  
}
int countF = 400;
int m=0;
int last=0;
void draw(){
  m=millis()-last;
  
  
  if(port.available()>0){
    valor=port.readString();
  
      i++;
   
   println(valor); //<>//
  }
  if(millis()>last+9000){
    last=millis();
    datos.append(i);
    i=0;
  for(int x = 0; x < datos.size(); x++){
    //rect(40*x, 450-datos[x],35, datos[x]+30);
    int sig = x + 3;
    int sigui = x + 4;
    int count = (x+1)*10;
    int ultimo = datos.get(datos.size()-1);
    strokeWeight(5);
    point(25*sig,height-(datos.get(x)*10)-100);
    text(count,24.5*sig, height-90);
    strokeWeight(0.5);
    if( datos.get(x) == ultimo){
       
    }else{
      line(25*sig,height-(datos.get(x)*10)-100,25*sigui,height-(datos.get(x+1)*10)-100);
    }
    
  }
  
  }
  strokeWeight(1);
  line(50, height-100,400,height-100);
  line(50, height-100, 50, 10);
  text(0, 35, height-100);
  text(1, 35, height-110);
  text(2, 35, height-120);
  text(3, 35, height-130);
  text(4, 35, height-140);
  text(5, 35, height-150);
  text(6, 35, height-160);
  text(7, 35, height-170);
  text(8, 35, height-180);
  text(9, 35, height-190);
  text(10, 35, height-200);
  text(11, 35, height-210);
  text(12, 35, height-220);
  text(13, 35, height-230);
  text(14, 35, height-240);
  text(15, 35, height-250);
  
  
}

/*void serialEvent(Serial port) {
  String bufString = port.readString();
  valor = int(bufString);
  println(valor);
}*/