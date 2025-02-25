class GameObject {
 
  PImage img;
  
  //this stores the POSITION to render the sprite, measured in pixels.
  PVector position = new PVector();
  
  //this stores the ANGLE to render the sprite, measured in degrees
  float rotation = 0;
  
  GameObject(PImage img){
    this.img = img;
  }
  void update () {
    
  }
  void draw(){ //telling it to draw
   pushMatrix();
   
   translate(position.x, position.y);
   rotate(radians(rotation));
   image(img, -img.width/2, -img.height/2);

   popMatrix();
  
  }
  
}
