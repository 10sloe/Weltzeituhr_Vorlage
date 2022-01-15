Uhr uhr1;


void setup()
{
  size(500,200);
  uhr1 = new Uhr();
}

void draw()
{
  background(200);
  uhr1.aktualisieren();
  uhr1.anzeigen(); 
}
