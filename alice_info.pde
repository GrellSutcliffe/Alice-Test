PImage alice;
PImage pilz;
PImage bg;
float skalierung=1;

void setup() {
  bg=loadImage("alice-bg.png");
  alice=loadImage("alice-vg.png");
  size(bg.width, bg.height);
  image(alice,0,0);
  pilz=loadImage("Pilz.png");
}
void draw() {
  image(bg,0,0);
  if (mouseX<pilz.width && mouseY>height-pilz.height) {
     if (mouseX<pilz.width/2){
        skalierung= skalierung -0.01;
     }else {
       skalierung= skalierung +0.01;
     } 
  }
  pushMatrix();
  translate(width/2-skalierung*alice.width/2,
          bg.height-skalierung*alice.height);
   scale(skalierung);
   image(alice,0,0);
   popMatrix();
   image(pilz,0,height-pilz.height);
   }


