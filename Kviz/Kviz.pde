import processing.sound.*;

boolean pocetna, prva, druga, izbor, treca, zavrsni, win, pravila, lovacIgrac, zav_pot;
Pocetni pocetni;
Prva Faza1;
Druga Faza2;
Treca Faza3;
Biranje Izbor;
Zavrsna Zavrsni;
Pravila ispisPravila;
Zavrsna_potjera zavrsna_potjera;
int iznos, pos, ukupno_tocnih; //za broj točnih odgovora u završnoj potjeri

PImage naslovnica;
PImage pozadina;
PImage pozadina_zavrsna;//pozadina za završnu potjeru
PImage vrijeme;
PImage konfeti;
PImage voditelj;
PImage izgubio;
color tamnoplava = color(0, 16, 38);
color plava = color(51, 89, 204);
color lovac = color(165, 0, 0);
color igrac = color(0, 108, 196);
color netocno = color(178,34,34);
color tocno = color(0,81,34);
PFont f;

SoundFile song1;
SoundFile song2;
SoundFile song3;

void setup(){
  size(800,800);
  naslovnica = loadImage("naslovnica.jpeg");
  pozadina = loadImage("pozadina.jpeg");
  pozadina_zavrsna = loadImage("zavrsna_2.jpg");
  konfeti = loadImage("konfeti.jpeg");
  vrijeme = loadImage("time1.png");
  voditelj = loadImage("tarik.jpeg");
  izgubio = loadImage("izgubio.jpg");
  
  naslovnica.resize(800,800);
  pozadina.resize(800,800);
  pozadina_zavrsna.resize(800,800);
  konfeti.resize(800,800);
  izgubio.resize(800,800);
  voditelj.resize(800, 800);
  vrijeme.resize(45,43);
  
  f = createFont("Georgia",16,true);
  textFont(f);
  
  pos = 1;
  pocetni = new Pocetni();
  Faza1 = new Prva();
  Faza2 = new Druga();
  Faza3 = new Treca();
  Izbor = new Biranje();
  Zavrsni = new Zavrsna();
  ispisPravila = new Pravila();
  zavrsna_potjera = new Zavrsna_potjera();
  pocetna = true;
  prva = false;
  druga = false;
  izbor = false;
  treca = false;
  zavrsni = false;
  win = false;
  pravila = false;
  zav_pot =false;
  lovacIgrac = false;
  
  song1 = new SoundFile(this, "Correct-answer.mp3");
  song2 = new SoundFile(this, "Wrong-answer.mp3");
  song3 = new SoundFile(this, "Chase.mp3");
}

void draw(){
  pocetni.iscrtaj();
}

void keyPressed(){
  pocetni.provjeriBotun(key);
}
