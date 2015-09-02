import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

AudioPlayer player;
Minim minim;


void setup () {
  size (510, 510);
  PImage img;
  img = loadImage("okregi.jpg");
  img.resize (510, 510);
  background (img);
  minim = new Minim(this);
  player = minim.loadFile("heartbeats.mp3");
  player.play();
}
void draw () {
 
  int x0 = mouseX;
  int y0 = mouseY;
  float c= random(0,255.1);
  noStroke();
  for (int i = 0; i<=255; i++)
  if (mousePressed) {
        {
      fill(255, i, c);
      ellipse(x0, y0, width, height);
    }
  } else {
    {
      fill(255, c, i);
      ellipse(x0, y0, x0-i, y0 -i);
    }
  }
}
void keyReleased ()
{ 
  PImage img;
  img = loadImage("okregi.jpg");
  img.resize (510, 510);
  if(key== ' ') background(img);
  if(key== 's') saveFrame ();
}


