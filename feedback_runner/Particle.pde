class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  
  //constructor function
  Particle(PVector l){
   acceleration = new PVector(0,0.05);
   velocity     = new PVector(random(-1,1), random(-1,0));
   location     = l.get();
   lifespan     = 255.0; 
  }
  
  void run(){
   update();
   display();
  }
  
  
  void update(){
   velocity.add(acceleration);
   location.add(velocity);
   lifespan -= 2.0;
  }
  
  
  void display(){
   stroke(0,lifespan);
   strokeWeight(2);
   fill(127, lifespan);
   ellipse(location.x, location.y, 12, 12);
  }
  
  boolean isDead() {
    if (lifespan < 0.0){
      return true;
    }
    else {
      return false;
    }
  }
}