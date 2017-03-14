// credit to AndrewF

int count = 0;

void setup() {
  size(300,300);
}

void draw() {
   
  count = 0;
  while(count < 5) 
  {
    count = count + 1;
    fill(random(255), random(255), random(255));
    ellipse(100, count * 50, 50, 50); 
  }
}