int checker = 0;
public void setup(){
	size(600, 600);
}

public void draw(){
  background(0);
  fractalcircle(50, 300, 300, 1);
}

public void fractalcircle(int radius, int x, int y, int counter){
  if(counter == 5){
  fill(255);
  ellipse(x, y, radius, radius);
 }else{
 	fill(255);
 	checker+=1;
 	fractalcircle(radius/checker, x + radius, y - radius, counter + 1);
 	fractalcircle(radius/checker, x + 10, y + 10, counter + 1);
 	fractalcircle(radius/checker, x - 10, y + 10, counter + 1);
 }
}