ArrayList<Letter> letterList;
PImage fade;

void setup() {
  size(1280, 900);
  noCursor();
  
  letterList = new ArrayList<Letter>();
  
  fade = loadImage("fade.png");
  
  minim();
}

float angle = 0.0;
float offset = 350;
float scalar = 300;
float speed = 0.5;

void draw() {
  background(0);
  noCursor();
  fill(255);
  stroke(255);
  translate(0,200);
  
  for(int i=0; i<letterList.size(); i++){
      Letter temp = letterList.get(i);
      temp.display();
  }
  
  image(fade,0,-200);
}

void keyPressed() {
  letterList.add( new Letter(key) );
  println(letterList.size());
  
  if ( key == 'a' ) sa.trigger();
  if ( key == 'b' ) sb.trigger();
  if ( key == 'c' ) sc.trigger();
  if ( key == 'd' ) sd.trigger();
  if ( key == 'e' ) se.trigger();
  if ( key == 'f' ) sf.trigger();
  if ( key == 'g' ) sg.trigger();
  if ( key == 'h' ) sh.trigger();
  if ( key == 'i' ) si.trigger();
  if ( key == 'j' ) sj.trigger();
  if ( key == 'k' ) sk.trigger();
  if ( key == 'l' ) sl.trigger();
  if ( key == 'm' ) sm.trigger();
  if ( key == 'n' ) sn.trigger();
  if ( key == 'o' ) so.trigger();
  if ( key == 'p' ) sp.trigger();
  if ( key == 'q' ) sq.trigger();
  if ( key == 'r' ) sr.trigger();
  if ( key == 's' ) ss.trigger();
  if ( key == 't' ) st.trigger();
  if ( key == 'u' ) su.trigger();
  if ( key == 'v' ) sv.trigger();
  if ( key == 'w' ) sw.trigger();
  if ( key == 'x' ) sx.trigger();
  if ( key == 'y' ) sy.trigger();
  if ( key == 'z' ) sz.trigger();
}

void minim() {
  minim = new Minim(this);
  
  sa = minim.loadSample( "a.mp3", 512);
  sb = minim.loadSample( "b.mp3", 512);
  sc = minim.loadSample( "c.mp3", 512);
  sd = minim.loadSample( "d.mp3", 512);
  se = minim.loadSample( "e.mp3", 512);
  sf = minim.loadSample( "f.mp3", 512);
  sg = minim.loadSample( "g.mp3", 512);
  sh = minim.loadSample( "h.mp3", 512);
  si = minim.loadSample( "i.mp3", 512);
  sj = minim.loadSample( "j.mp3", 512);
  sk = minim.loadSample( "k.mp3", 512);
  sl = minim.loadSample( "l.mp3", 512);
  sm = minim.loadSample( "m.mp3", 512);
  sn = minim.loadSample( "n.mp3", 512);
  so = minim.loadSample( "o.mp3", 512);
  sp = minim.loadSample( "p.mp3", 512);
  sq = minim.loadSample( "q.mp3", 512);
  sr = minim.loadSample( "r.mp3", 512);
  ss = minim.loadSample( "s.mp3", 512);
  st = minim.loadSample( "t.mp3", 512);
  su = minim.loadSample( "u.mp3", 512);
  sv = minim.loadSample( "v.mp3", 512);
  sw = minim.loadSample( "w.mp3", 512);
  sx = minim.loadSample( "x.mp3", 512);
  sy = minim.loadSample( "y.mp3", 512);
  sz = minim.loadSample( "z.mp3", 512);
}
