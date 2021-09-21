ArrayList<round_object> c = new ArrayList<round_object>();
int totSize = 300;
boolean switcher = false;

void setup()
{
  size(800, 800);
  c.add(new round_object(400, 400, 300, false, color(random(255), random(255), random(255))));
}  

void draw()
{
  noStroke();
  background(255);

  for (int i=0; i < c.size(); i++)
  {
    c.get(i).drawEllipse();
    c.get(i).fall();
  }
}

void mousePressed() {
  for (int i=0; i < c.size(); i++)
  {
    if (dist(mouseX, mouseY, c.get(i).pos_x, c.get(i).pos_y) <= totSize/2) {
      switcher = true;
      if (switcher == true)
      {
        totSize = totSize - (totSize/10);
        c.add(new round_object(random(800), random(800), totSize/2, false, color(random(255), random(255), random(255))));
        c.add(new round_object(random(800), random(800), totSize/2, false, color(random(255), random(255), random(255))));
        c.add(new round_object(random(800), random(800), totSize/2, false, color(random(255), random(255), random(255))));

        c.get(i).remover = true;
        switcher = false;
      }

      c.get(i).remover = true;
    }
  }
}
