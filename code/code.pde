

Veicolo  Nimbus;
Personaggio harry;
float yharry = height*0.1;
class Veicolo {  //classe Veicolo
  PShape forma2;
  Veicolo(String filename2) {
    forma2 = loadShape(filename2);  //Nimbus
    forma2.setFill(color(#B4710B));
  }

  void disegna2(float x, float y) {
    shape(forma2, x, y);
  }
}

class Personaggio {   //classe Personaggio
  PShape forma;
  Personaggio(String filename) {
    forma = loadShape(filename);    //harry
    forma.setFill(color(0, 0, 0));
  }
  void disegna (float x, float y) {
    shape(forma, x, y);
  }
}
void setup() {
  fullScreen(P3D);
  //costruttore 
  harry = new Personaggio("harry.obj");
  Nimbus = new Veicolo("broom.obj");
}
void draw() {
  background(#7AFF5D);
  lights();  // luci accese
  harry.disegna(width*0.5, yharry);    //posizione harry
  Nimbus.disegna2(width*0.5, height*0.9);  // posizione nimbus
  yharry = yharry + 5;  // movimento di harry
  if (yharry >= height*0.9) {
    yharry = yharry - 5;    // punto in cui si ferma harri
  }
}
