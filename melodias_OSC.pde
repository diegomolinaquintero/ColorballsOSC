import oscP5.*;
import netP5.*;
float tam1 = 0;
float tam2 = 0;
float tam3 = 0;
float tam4 = 0;
float pox1 = 0;
float pox2 = 0;
float pox3 = 0;
float pox4 = 0;
float fo1 = 0;
float fo2 = 0;
float fo3 = 0;
float fo4 = 0;


//Declaramos la variable de objeto oscP5 de tipo de clase OscP5
OscP5 oscP5;

void setup(){
  size(500, 500);
  frameRate(25);

  /* start oscP5, listening for incoming messages at port 12000 */
  oscP5 = new OscP5(this, 9997);
}


void draw(){
  stroke(int(random(255)),random(255),random(255));
  background(fo1,fo2,fo3);
  fill(247,50,205);
ellipse(pox1,100,tam1,tam1);
 fill(66,17,234);
ellipse(pox2,200,tam2,tam2);
 fill(174,192,242);
ellipse(pox3,300,tam3,tam3);
 fill(101,232,245);
ellipse(pox4,400,tam4,tam4);

}


void oscEvent(OscMessage theOscMessage) {

  if (theOscMessage.checkAddrPattern("/pox1")==true) {
    pox1 = theOscMessage.get(0).intValue();
  }

  if (theOscMessage.checkAddrPattern("/pox2")==true) {
    pox2 = theOscMessage.get(0).intValue();
  }
  
   if (theOscMessage.checkAddrPattern("/pox3")==true) {
    pox3 = theOscMessage.get(0).intValue();
  }
  
  if (theOscMessage.checkAddrPattern("/pox4")==true) {
    pox4 = theOscMessage.get(0).intValue();
  }
  
   if (theOscMessage.checkAddrPattern("/tam1")==true) {
    tam1 = theOscMessage.get(0).floatValue();
  }
  
    if (theOscMessage.checkAddrPattern("/tam2")==true) {
    tam2 = theOscMessage.get(0).floatValue();
  }
  
    if (theOscMessage.checkAddrPattern("/tam3")==true) {
    tam3 = theOscMessage.get(0).floatValue();
  }
  
      if (theOscMessage.checkAddrPattern("/tam4")==true) {
    tam4 = theOscMessage.get(0).floatValue();
  }
  //fondo de los acordes
     if (theOscMessage.checkAddrPattern("/fo1")==true) {
    fo1 = theOscMessage.get(0).intValue();
  }
  
    if (theOscMessage.checkAddrPattern("/fo2")==true) {
    fo2 = theOscMessage.get(0).intValue();
  }
  
    if (theOscMessage.checkAddrPattern("/fo3")==true) {
    fo3 = theOscMessage.get(0).intValue();
  }
  
  
      if (theOscMessage.checkAddrPattern("/fo4")==true) {
    fo4 = theOscMessage.get(0).intValue();
  }
  


println("x: " + pox1 + ", x2: " + pox2 + " x3: " + pox3 + "x4: " + pox4 );
println("t: " + tam1 + ", t2: " + tam2 + " t3: " + tam3 + "t4: " + tam4 );


  // print the address pattern and the typetag of the received OscMessage 
  //print("### received an osc message.");
  //print(" addrpattern: "+theOscMessage.addrPattern());
  //println(" typetag: "+theOscMessage.typetag());
 // println("x: " + posX + ", y: " + posY + " clic: " + posT);
}
