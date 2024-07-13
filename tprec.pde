// Camila Aylen Busse Lopez 
// Comision 2
//https://youtu.be/TCYocVo1Dt8

PImage cam;
int Pantalla = 1;


void setup() {
  size(800, 400);
  cam = loadImage("cami.png");
}

void draw() {
  image(cam, 0, 0, 400, 400);
  Cuadro(Pantalla);
  rectMode(CENTER);
}

void mousePressed() {
  cambioDePantalla();
}

void cambioDePantalla() {
  Pantalla++;
  if (Pantalla > 3) {
    Pantalla = 3;
  }
}
void keyPressed() {
  if (key == 'r' || key == 'R') {   //Reiniciar con R
    reiniciar();
  }
}
void Cuadro(int pantalla) {
  float rojo = 0;
  float verde = 0;
  float azul = 0;

  if (pantalla == 1) {
    for (int c = 400; c >= 20; c -= 20) {
      for (int i = 0; i < 10; i++) {
        if ((c / 20) % 2 == 0) {
          fill(255);
          rojo = map(c, 400, 20, 50, 254);
          verde = map(c, 400, 20, 37, 189);
          azul = map(c, 400, 20, 0, 40);
          dist(600, 199, 600 + c, 199 + c);
          rect(600, 199, c, c);
        } else {  //segundo cuadrado de negro hacia gris
          fill(0);
          rojo = map(c, 420, 20, 135, 70);
          verde = map(c, 420, 20, 141, 59);
          azul = map(c, 430, 20, 163, 50);
          dist(600, 191, 600 + c, 191 + c);
          rect(600, 191, c, c);
        }
      }
    }
  } else if (pantalla == 2) {
    for (int c = 400; c >= 20; c -= 20) {
      for (int i = 0; i < 10; i++) {
        if ((c / 20) % 2 == 0) {
          fill(rojo, verde, azul);
          rojo = map(c, 400, 20, 125, 117);
          verde = map(c, 400, 20, 140, 107);
          azul = map(c, 400, 20, 144, 234);
         dist(600, 199, 600 + c, 199 + c);
          rect(600, 199, c, c);
        } else {
          float posX = 600;
          float posY = 192;
          push();
          translate(posX, posY);
          rotate(map(mouseX, 400, 20, 1, PI));
          fill(rojo, verde, azul);
          rojo = map(c, 400, 20, 65, 255);
          verde = map(c, 400, 20, 60, 98);
          azul = map(c, 400, 20, 70, 229);
          dist(0, 0, c, c);
          rect(0, 0, c, c);
          pop();
        }
      }
    }
  } else if (pantalla == 3) {   //Cudrados epilepticos!
    for (int c = 400; c >= 20; c -= 20) {
      for (int i = 0; i < 10; i++) {
        if ((c / 20) % 2 == 0) {
          fill(rojo, verde, azul);
          rojo = random(100, 255);
          verde = map(c, 420, 20, 140, 99);
          azul = random(100, 255);
          dist(600, 199, 600 + c, 199 + c);
          rect(600, 199, c, c);
        } else {
          fill(rojo, verde, azul);
          rojo = map(c, 420, 20, 0, 240);
          verde = map(c, 420, 20, 0, 122);
          azul = map(c, 420, 20, 0, 166);
          dist(600, 191, 600 + c, 191 + c);
          rect(600, 191, c, c);
        }
      }
    }
  }
}

void reiniciar() {
  Pantalla = 1;
}
