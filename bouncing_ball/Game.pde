class Game{
  Ball ball;
  Tile tile;
  Targets targets;
  int score = 0;
  int level = 1;
  
  Game(){
  ball = new Ball(50);
  tile = new Tile(120 , 30);
  targets= new Targets();
  targets.loadData();
  }

  void calculate(){

  targets.calculateCollision(ball);
  if(ball.position.y> height-(tile.tileheight*2)){
    
  if((tile.position.x - (tile.tilewidth/2)-(ball.size/2)) < ball.position.x && 
        ball.position.x < ((tile.position.x + (tile.tilewidth/2) + ball.size/2))){
          
    ball.velocity.y = ball.velocity.y*(-1);
    ball.acceleration.y = ball.acceleration.y*(-1);

    ball.groove.trigger();
    
     }
  }
 
  
  ball.move();
  tile.move(int(mouseX));
 
}

  void display(){
   targets.display();
   ball.display();
   tile.display();
   if(ball.position.y>height-(tile.tileheight)){
    background(255);
    textSize(40);
    fill(random(255),random(255),random(255));
    text("GAME OVER",width/2-100,height/2);
    noLoop();
  }
  
  textSize(30);
  score=targets.totalnumberoftargets-targets.currentnumberoftargets;
  text("score : "+score,width-200,50);
  
  if(score==targets.totalnumberoftargets){
    background(255);
    textSize(40);
    fill(random(255),random(255),random(255));
    text("LEVEL "+level+" COMPLETED",width/2-100,height/2);
    ++level;
    targets.loadData();
  }

}
}
