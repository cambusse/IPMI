//Busse López Camila Aylén    COMISION 2    95957/7 

PImage image;
size(800, 400);
image = loadImage("paisajesmontañas.jpg");

image.resize(400, 400);

background(63, 164, 216);

image(image, 0, 0, 400, 400);

 //lago//
fill(53, 151, 170); 
rect(400, 240, 400, 200);

 //montañas//
fill(255);
triangle(450, 60, 490, 60, 470, 40);
 
fill(175, 155, 131);
rect(450, 60, 40, 170);
triangle(720, 120, 720, 240, 500, 240);

fill(114, 116, 110);
triangle(490, 60, 490, 240, 560, 240);
triangle(400, 0, 545, 240, 400, 240);
triangle(720, 120, 720, 200, 1000, 250);

 //terreno//
fill(133, 162, 67); 
triangle(540, 240, 800, 160, 800, 240);
triangle(400, 260, 400, 175, 600, 250);

 //montañas 2//
fill(203, 179, 115); 
triangle(800, 240, 700, 300, 800, 400);
triangle(800, 330, 800, 500, 680, 360);
fill(126, 147, 64);
triangle(780, 30, 830, 240, 760, 265);

 //nubes//
noStroke();
fill(225);
ellipse(570, 95, 100, 50);
ellipse(700, 70, 140, 50);
