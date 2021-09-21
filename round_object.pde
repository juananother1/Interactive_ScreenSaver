class round_object
{
  float pos_x;
  float pos_y;
  float size;
  float size2;
  boolean remover;
  color Color;
  float a;

  round_object(float pos_x_, float pos_y_, float size_, boolean remover_, color Color_)
  {
    pos_x = pos_x_;
    pos_y = pos_y_;
    size = size_;
    remover = remover_;
    Color = Color_;
    a = 0;
  }

  void s_plit()
  {
    if (dist(mouseX, mouseY, pos_x, pos_y) <= size /2)
    {
      if (mousePressed) {
        c.add(new round_object(random(800), 0, size2/2, false, color(random(255), random(255), random(255))));
        c.add(new round_object(random(800), 0, size2/2, false, color(random(255), random(255), random(255))));

        remover = true;
      }
    }
  }

  void drawEllipse()
  {
    if (remover == false)
    {
      fill(Color, a);
      ellipse(pos_x, pos_y, size, size);
    }
    if (remover == true)
    {
      c.remove(this);
    }
  }
  
  void fall()
  {
    pos_y += 0.5;
    a += 0.2;
    if(pos_y >= 800)
    {
      pos_y = 0;
      a = 0;
    }
  }
}
