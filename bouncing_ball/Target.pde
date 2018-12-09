class Target{
 
 PVector position;
 float size = 40;
 
 Target(int x,int y){
   
   position = new PVector(x,y);
 }
  boolean isCollided(Ball ball){
  if(dist(position.x,position.y,ball.position.x,ball.position.y)<(this.size/2+ball.size/2)){
    return true;
  }
  return false;
  }
 
  void display(){
   stroke(0);
   strokeWeight(2);
   fill(255,0,0);
   rectMode(CENTER);
   rect(position.x,position.y,size,size);
 }
}
