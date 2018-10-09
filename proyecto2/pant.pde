PImage img;
PImage imge, imag1, imag2, imag3, imag4;
PImage flor1, flor2, flor3, flor4, flor5, flor11;
PImage flor6, flor7, flor8, flor9, flor10, flor12, flor13;
float c;
float e;
PFont titulo;
PFont intro;
float sval = 1.0;

class Pantalla{

  int p;
  
  void inicio(){
    textSize(30);
    fill(0);
    textFont(titulo,48);
    text("NO DEJES QUE MUERA", 130,100);
    textFont(intro,25);
    text("Presiona 'w' para continuar", 340,140);
    
     pushMatrix();
  translate(70,150);
  scale (0.38,0.38);
    image(imag2,c,e);
    popMatrix();
    
     pushMatrix();
  translate(300,160);
  scale (0.37,0.37);
    image(imag4,c,e);
    popMatrix();
    
      pushMatrix();
  translate(160,160);
  scale (0.40,0.40);
    image(imag3,c,e);
    popMatrix();
    
      pushMatrix();
  translate(400,160);
  scale (0.35,0.35);
    image(imag1,c,e);
    popMatrix();
    
  pushMatrix();
  translate(490,140);
  scale (0.40,0.40);
  image(img,c,e);
  popMatrix();
  
  pushMatrix();
  translate(190,160);
  scale (-0.40,0.40);
  image(imge,c,e);
  popMatrix();
  
  pushMatrix();
  translate(190,400);
  scale (-0.10,0.10);
  image(flor1,c,e);
  popMatrix();
  
  pushMatrix();
  translate(580,400);
  scale (0.10,0.10);
  image(flor2,c,e);
  popMatrix();
  
  pushMatrix();
  translate(570,400);
  scale (-0.10,0.10);
  image(flor6,c,e);
  popMatrix();
  
  pushMatrix();
  translate(200,400);
  scale (0.12,0.12);
  image(flor5,c,e);
  popMatrix();
  
  pushMatrix();
  translate(175,410);
  scale (0.12,0.12);
  image(flor3,c,e);
  popMatrix();
  
  pushMatrix();
  translate(620,400);
  scale (0.12,0.12);
  image(flor4,c,e);
  popMatrix();
  
  pushMatrix();
  translate(20,400);
  scale (0.12,0.12);
  image(flor7,c,e);
  popMatrix();
  
  pushMatrix();
  translate(130,400);
  scale (-0.12,0.12);
  image(flor8,c,e);
  popMatrix();
  
  pushMatrix();
  translate(440,400);
  scale (0.12,0.12);
  image(flor10,c,e);
  popMatrix();
  
  pushMatrix();
  translate(440,400);
  scale (-0.12,0.12);
  image(flor11,c,e);
  popMatrix();
  
   if (random(0.1) < 2) {
    float sz = random(4, 8);
    particles.add(new Particulas(random(width), 10, sz));
  }


  box2d.step();

  // Look at all particles
  for (int i = particles.size()-1; i >= 0; i--) {
    Particulas p = particles.get(i);
    p.display();

    if (p.done()) {
      particles.remove(i);
    }
  }
   if (random(1) < 2) {
    float sz = random(4, 8);
    particles.add(new Particulas(random(width), 40, sz));
  }


  box2d.step();

  // Look at all particles
  for (int i = particles.size()-1; i >= 0; i--) {
    Particulas p = particles.get(i);
    p.display();

    if (p.done()) {
      particles.remove(i);
    }
  }

  }
  
  void texto(){
    if (random(0.1) < 2) {
    float sz = random(4, 8);
    particles.add(new Particulas(random(width), 10, sz));
  }


  box2d.step();

  // Look at all particles
  for (int i = particles.size()-1; i >= 0; i--) {
    Particulas p = particles.get(i);
    p.display();

    if (p.done()) {
      particles.remove(i);
    }
  }
    
    fill(234,218,179);
    textFont(intro,30);
    text("INSTRUCCIONES:",60,65);
    textFont(intro,20);
    text("Haz click con el mouse y mantelo presionado para hacer llover y regar las plabtas",70,180);
    text("No dejes de regarlas o desapareceran", 50,230);
    text("presiona 'e' para empezar", 200,400);
    text("presiona 'm' para volver a la pantalla de inicio", 200,450);
    
     pushMatrix();
  translate(650,300);
  scale (-0.2,0.2);
  image(flor9,c,e);
  popMatrix();
    
     pushMatrix();
  translate(50,300);
  scale (0.2,0.2);
  image(flor9,c,e);
  popMatrix();
  
   pushMatrix();
  translate(650,50);
  scale (-0.1,0.1);
  image(flor1,c,e);
  popMatrix();
  
   pushMatrix();
  translate(600,50);
  scale (-0.1,0.1);
  image(flor6,c,e);
  popMatrix();
  }
  
 void bosque(){
   if (mousePressed){
     if (random(0.1) < 2) {
    float sz = random(4, 8);
    particles.add(new Particulas(random(width), 10, sz));
  }


  box2d.step();

  // Look at all particles
  for (int i = particles.size()-1; i >= 0; i--) {
    Particulas p = particles.get(i);
    p.display();

    if (p.done()) {
      particles.remove(i);
    }
  }
   }
    if (mousePressed){
     sval += 0.0002;
   }
   else{
     sval -= 0.0002;
   }
   sval = constrain(sval,0,0.3);
   translate(500,200);
  scale(sval);
  image(img,0,0);
  
  translate(-1000,0);
  image(imge,0,0);
   
  translate(-900,0);
  image(imag1,0,0);
   
  translate(450,0);
  image(imag2,0,0);
  
  translate(950,0);
  image(imag3,0,0);
  
  translate(400,100);
  image(imag4,0,0);
  
  translate(350,650);
  scale(0.3,0.3);
  image(flor12,0,0);
  
  translate(450,250);
  image(flor13,0,0);
  
   translate(-950,-100);
  image(flor1,0,0);
  
   translate(-1000,0);
  image(flor11,0,0);
  
   translate(200,0);
  image(flor10,0,0);
  
    translate(-800,0);
  image(flor3,0,0);
  
   translate(-2000,0);
  image(flor4,0,0);
  
    translate(-1000,0);
  image(flor5,0,0);
  
   translate(-500,0);
  image(flor7,0,0);
  
  translate(-600,0);
  image(flor8,0,0);
 } 
 
 void display(){
   
   switch(this.p){
     case 0:
     inicio();
     break;
     case 1:
     texto();
     break;
     case 2:
     bosque();
     break;
   }
 }
 
 void teclado(){
   if (key == 'm'){
     p=0;
   }
   if(key == 'w'){
     p=1;
   }
   if(key == 'e'){
     p=2;
   }
 }

 }
   
