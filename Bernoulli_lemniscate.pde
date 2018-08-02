/* Bernoulli' Lemniscate*/

size(1000, 1000);
smooth();

float a = (width/3)-(width/13); // arc length

for (float t=0; t<360; t++) { // rotating the angle 0-360 degrees
float x = (a * cos(radians(t)))/(1+pow(sin(radians(t)), 2)); // x position
float y = (a * sin(radians(t)) * cos(radians(t)))/(1+pow(sin(radians(t)), 2)); // y position
pushMatrix();
translate(width/2, height/2); // center artwork
ellipse(x, y, 200, 30);
popMatrix();
save("Desktop/lemniscata.png");
}
