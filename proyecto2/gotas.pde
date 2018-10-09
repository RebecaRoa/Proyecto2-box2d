class Particulas{
  
  Body body;
  float r;
  
  color c;
  boolean delete = false;
  
  Particulas(float x_, float y_, float r_){
    r = r_;
    
    makeBody(x_, y_, r_);
    body.setUserData(this);
    c = color(196, 243, 238);
  }
  
  void killBody(){
    box2d.destroyBody(body);
  }
  void delete(){
    delete = true;
  }
  
  boolean done(){
    Vec2 pos = box2d.getBodyPixelCoord(body);
    
    if (pos.y > height+r*2 || delete){
      killBody();
      return true;
    }
    return false;
  }
  
  void display(){
    
    Vec2 pos = box2d.getBodyPixelCoord(body);

     pushMatrix();
    translate(pos.x, pos.y);

    fill(c);
    noStroke();
    strokeWeight(10);
    ellipse(0, 0, 3, 4);
    popMatrix();
  }
  
  void makeBody(float x_, float y_, float r_){
    
    BodyDef bd = new BodyDef();
    
    bd.position = box2d.coordPixelsToWorld(x_,y_);
    bd.type = BodyType.DYNAMIC;
    body = box2d.createBody(bd);
    
    CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r_);
    
    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
    
    fd.density = 1;
    fd.restitution = 0.3;
    
    body.createFixture(fd);
  }
}
