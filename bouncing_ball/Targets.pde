class Targets{
  int totalnumberoftargets;
  int currentnumberoftargets;
  
  ArrayList<Target> targets;
  Targets(){
    targets=new ArrayList<Target>();
}

  void loadData(){
    
    for(int i=40; i<height/2; i += 60){
      for(int j=40; j<width-20; j += 50){
        int flag=int(random(0,2));
        if(flag == 1){
          targets.add(new Target(j,i));
      }
    }}
    totalnumberoftargets=targets.size();
    currentnumberoftargets=totalnumberoftargets;
   } 


  void calculateCollision(Ball ball){
  
  for(int i = targets.size()-1; i>=0; i--){
      Target target= targets.get(i);
    if(target.isCollided(ball)){
      ball.velocity = ball.velocity.mult(-1);
      ball.acceleration = ball.acceleration.mult(-1);
      targets.remove(i);
      currentnumberoftargets -= 1;
    }
  }
}
  
  void display(){
    for(Target t: targets){
    t.display();
  }
}
}
