//Camila Aylen Busse Lopez COMISION 2 tp2

float contador;
PImage minecraft1;
PImage minecraft2;
PImage minecraft3;
PImage minecraft4;
int posX;
int posY3;
int posY2;
int posX2;
PFont fuente;

void setup () {
  size( 640, 480);
  minecraft1= loadImage("fotominecraft1.jpg");
  minecraft2= loadImage("fotominecraft2.jpg");
  minecraft3= loadImage("fotominecraft3.jpg");
  minecraft4= loadImage("fotominecraft4.jpg");
  fuente = loadFont("ProcessingSans-Regular-48.vlw");
  textFont(fuente, 35);
  textAlign(CENTER, CENTER);
  textSize(60);
  posX= 640;
  posY3= 0;
  posY2= 480;
  posX2= 640; 
}

void draw() {

  contador = contador + 1;
  println("mouseX" + mouseX);
  println("mouseY" + mouseY);

  if (contador < 300) {
    image(minecraft1, 0, 0, 640, 480);
    fill(255);
    textSize(30);
    text("El Minecraft es un juego sandbox de cubos \n  creado en el 2011", posX, height/3);
    posX = posX - 2;
  }

  if (contador > 300 && contador < 580) {
    image(minecraft2, 0, 0, 640, 480);
    fill(255);
    textSize(30);
    text("Con varias modalidades \n como el survival, \n creativo y hardcore", posX2, posY2);
    posY2 = posY2 - 2;
    posX2 = posX2 - 1;
  }

  if (contador > 580 && contador < 900) {
    image(minecraft3, 0, 0, 640, 480);
    fill(255);
    textSize(25);
    text("El unico limite es tu imaginacion por esto nos \n demuestra por que es el juego mas vendido de la historia", width/2, posY3);
    posY3 = posY3 + 2;
  }  
    
  if (contador > 900 && contador < 1200) {
    image(minecraft4, 0, 0, 640, 480);
    fill(255, 0, 0);
    rect(509, 390, 462, 627);
    fill(255);
    textSize(30);
    text("reiniciar", 576, 434);
    
  }
}

void mousePressed(){
if (mouseX >= 509 && mouseX <= 939 && mouseY >= 390 && mouseY <= 590){
posX = 640;
posX2 = 640;
posY2 = 480;
posY3 = 0;
contador = 0;
}
  
}
