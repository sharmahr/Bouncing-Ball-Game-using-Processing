// Created by Hardik Sharma

Game game;
void setup(){
  size(1000,800, P2D); 
  game = new Game();
  background(255);
}

void draw(){
  background(255);
  game.calculate();
  game.display();
  
}
