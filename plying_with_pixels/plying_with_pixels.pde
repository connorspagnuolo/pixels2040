PImage noise; 

void setup() {
  
  size(600, 500);
  noise = createImage(width,height,RGB);
}
float inc = 0;
float ns = 0.3;
void draw() {
  inc+=0.09;
  noise.loadPixels();
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      
      int loc = i + j *width;
      
      float n = noise(i * ns+inc,j*ns);
      
      noise.pixels[loc] = color(n*255);
      
    }
  }
  noise.updatePixels();
  color mycolor = color(120, 201, 10);
loadPixels();
for (int i = 0; i < (width*height)-width; i++) {
  pixels[i] = mycolor;


  pixels[i] = color(map(i,0,width*height,0,255),mouseX,mouseY);
}
updatePixels();
  //image(noise,mouseX,mouseY);

  
  
}

void mouseDragged(){
 updatePixels();
  image(noise,mouseX,0);
  
}
