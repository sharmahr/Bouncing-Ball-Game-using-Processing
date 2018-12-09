class Tile{
  PVector position;
  float tilewidth;
  float tileheight;
Tile(float tilewidth,float tileheight){
  this.tilewidth = tilewidth;
  this.tileheight = tileheight;
  position = new PVector(width/2,(height-tileheight/2));
}

void move(int x){
  position.x=x;
}

void display(){
  noStroke();
  fill(0);
  rectMode(CENTER);
  rect(position.x,position.y,tilewidth,tileheight);
}
}
