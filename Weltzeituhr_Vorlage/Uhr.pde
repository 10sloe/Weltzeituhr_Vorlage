class Uhr
{
  int stunden;
  int minuten;
  int sekunden;

  int x;
  int y;

  String ort;
  int radius;

  Uhr()
  {
    x = 100;
    y = 100;
    radius = 40;
    ort = "München";
  }

  void aktualisieren()
  {
    stunden = hour();
    minuten = minute();
    sekunden = second();
  }

  void anzeigen()
  {
    // Ziffernblatt
    fill(255);
    strokeWeight(5); // Liniendicke
    stroke(0); 
    circle(x, y, radius*2);
    textAlign(CENTER);
    fill(0);
    text(ort, x, y - radius - 10);

    // Die Sekundenanzeige
    zeichneSekundenzeiger();
    zeichneMinutenzeiger();
    zeichneStundenzeiger();
    
    circle(x,y,5);
  }

  void zeichneSekundenzeiger()
  {
    float l = radius * 0.8;
    float winkel = sekunden / 60.0 * 2 * PI - PI/2;
    float sx = cos(winkel);
    float sy = sin (winkel);
    stroke(255,0,0);
    strokeWeight(1); // Liniendicke
    line(x, y, x + l*sx, y + l*sy);
  }

  void zeichneMinutenzeiger()
  {
    float l = radius * 0.7;
    float winkel = minuten / 60.0 * 2 * PI - PI/2;
    float sx = cos(winkel);
    float sy = sin (winkel);
    stroke(0);
    strokeWeight(3); // Liniendicke
    line(x, y, x + l*sx, y + l*sy);
  }

  void zeichneStundenzeiger()
  {
    float l = radius * 0.5;
    if (stunden > 12)
    {
      stunden = stunden - 12;
    }
    float winkel = (stunden + minuten/60.0) / 12.0 * 2 * PI - PI/2;
    float sx = cos(winkel);
    float sy = sin (winkel);
    stroke(0);
    strokeWeight(3); // Liniendicke
    line(x, y, x + l*sx, y + l*sy);
  }
}
