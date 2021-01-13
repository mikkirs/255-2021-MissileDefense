
Player thePlayer;
GameObject background;
ArrayList<Asteroid> asteroids = new ArrayList <Asteroid>();

// this function is called exactly once:
void setup() {
  size(700, 800); // set size of window
  
  thePlayer = new Player();
  background = new GameObject( loadImage("space.png"));
  background.position.x = width/2;
  background.position.y = height/2;
  
  for(int i = 0; i < 10; i++){
    Asteroid a = new Asteroid();
    asteroids.add(a);
  }
  
}


// this function is called every 1/60th of a second.
// we will use it to create the "game loop" design pattern.
// each time this function is called, we can think of it as a "tick"
void draw() {
  
  // = calc time =
  // calculate how much time has passed since the previous tick
  
  // = process input =
  // get all input from devices
  
  // = update = 
  // sends a message to update all game objects each tick
  
  // this is essentially the "update" design pattern:
  thePlayer.update();
  
  // = draw =
  // render all game objects each tick
  background(0);
  background.draw();
  for(Asteroid a : asteroids) a.draw();
  thePlayer.draw();
}


PImage GetRandomAsteroidImage(){
  PImage img = null;
    
    int num = (int)random(0, 3); //random variable, int converted
    switch(num){
      case 0:
        img = loadImage("asteroid1.png");
        break;
      case 1:
        img = loadImage("asteroid2.png");
        break;
      case 2:
        default:
        img = loadImage("asteroid3.png");
        break; 
    }
    return img;
}
