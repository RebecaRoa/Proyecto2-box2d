import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;

int t =7;
float dt = 5;

Box2DProcessing box2d;
Pantalla pantallas;
ArrayList<Particulas> particles;
Suelo wall;

void setup() {
  size(700, 490);
  smooth();

  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0,-50);

  box2d.listenForCollisions();

  particles = new ArrayList<Particulas>();
  wall = new Suelo (width/2, height-5,width, 10);
  
  pantallas = new Pantalla(); 
  
  titulo = loadFont("Bykars-Demo-48.vlw");
  intro = loadFont("CaliBrush-48.vlw");
  img = loadImage("arbol 1.png");
  imge = loadImage("arbol 2.png");
  imag1 = loadImage("arbol 3.png");
  imag2 = loadImage("arbol 4.png");
  imag3 = loadImage("arbol 5.png");
  imag4 = loadImage("arbol 6.png");
  
  flor1 = loadImage("flor 1.png");
  flor2 = loadImage("flor 2.png");
  flor3 = loadImage("flor 3.png");
  flor4 = loadImage("flor 4.png");
  flor5 = loadImage("flor 5.png");
  flor6 = loadImage("flor 6.png");
  flor7 = loadImage("flor 7.png");
  flor8 = loadImage("flor 8.png");
  flor9 = loadImage("flor 9.png");
  flor10 = loadImage("flor 10.png");
  flor11 = loadImage("flor 11.png");
  flor12 = loadImage("flor 12.png");
  flor13 = loadImage("flor 13.png");
  
  for (int i = 0; i< img.height; i++){
    for (int j= 0; j< img.width; j++){
    }
  }
  
}

void draw() {
  //cielo
  noStroke();
  fill(69, 153, 201);
  rect(-t*80, 0, t*600, t*100);
  dt+=0.01;
  for (int i=0; i<800; i+=3){
    for (int j =0; j<230; j+=3){
      fill(noise(i*0.01+dt, j*0.03, dt)*255, noise(i*0.01+dt, j*0.03, dt)*6);
      rect(i,j, 10,10);
    }
     noStroke();
  fill(98,190,46);
  rect(0, 350, 1000, 150);
  }
  
  pantallas.display();
}

void beginContact(Contact cp) {
  // Get both shapes
  Fixture f1 = cp.getFixtureA();
  Fixture f2 = cp.getFixtureB();
  // Get both bodies
  Body b1 = f1.getBody();
  Body b2 = f2.getBody();

  // Get our objects that reference these bodies
  Object o1 = b1.getUserData();
  Object o2 = b2.getUserData();

  if (o1.getClass() == Particulas.class && o2.getClass() == Particulas.class) {

  }

  if (o1.getClass() == Suelo.class) {
    Particulas p = (Particulas) o2;
    p.delete();
  }
  if (o2.getClass() == Suelo.class) {
    Particulas p = (Particulas) o1;
    p.delete();
  }


}

// Objects stop touching each other
void endContact(Contact cp) {
}
void keyPressed(){
  pantallas.teclado();
}
