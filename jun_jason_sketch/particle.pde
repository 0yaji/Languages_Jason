class particle{
PVector pos1= new PVector(500,800);
PVector pos2= new PVector(500,800);
PVector pos3= new PVector(500,800);
PVector acc1=  new PVector(random(-1,1),random(-1,1));
PVector acc2=  new PVector(random(-1,1),random(-1,1));
PVector acc3=  new PVector(random(-1,1),random(-1,1));
PVector vel1=  new PVector(0,0);
PVector vel2=  new PVector(0,0);
PVector vel3=  new PVector(0,0);
int m=millis();
void particle(){
}
void show(){
 //println(pos1,pos2,pos3);
 noFill();
 triangle(pos1.x,pos1.y,pos2.x,pos2.y,pos3.x,pos3.y);
}
void update(){
acc1=  new PVector(random(-0.1,0.1),random(-0.1,0.1));
acc2=  new PVector(random(-0.1,0.1),random(-0.1,0.1));
acc3=  new PVector(random(-0.1,0.1),random(-0.1,0.1)); 
vel1.add(acc1);
vel2.add(acc2);
vel3.add(acc3);
pos1.add(vel1);
pos2.add(vel2);  
pos3.add(vel3);   
}
}