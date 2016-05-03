JSONArray values;
ArrayList<Word> words;
Word word1;
PImage fade;
float breathefreq = 100.0;
float breatheamp = 3.0;

boolean allreleased = false;
boolean michellemode = true;

int[] dely = {-40,-20,20,40};
int type_index = 0;

void setup() {
  fullScreen(2);
  //size(1080, 1920);
  //pixelDensity(2);
  noCursor();
  frameRate(30);
  ellipseMode(CENTER);
  fade = loadImage("fade.png");
  minim();
  values = loadJSONArray("letters.json");
  words = new ArrayList<Word>();
  words.add(new Word(""));
  
}

void draw() {
  background(0);
  noCursor();
  fill(255);
  stroke(255);
  
  //translate(0.0,height-200.0);

  allreleased = true;
  
  for(int i = words.size()-1; i >= 0 ; i--){
    words.get(i).update();
    words.get(i).display();
    if(words.get(i).status == 0){
      allreleased = false;
      type_index = i;
    }
  }
  
  if(allreleased && !michellemode)
    words.add(new Word(""));
  if(words.size() > 0){
    if(words.get(0).y < -500)
      words.remove(0);
  }
  
  image(fade,0,0);

}

void keyPressed() {
  try{
    if( key > 96 && key < 123){
      if(michellemode){
        words.add(new Word(key));
      }
      else{
        words.get(type_index).addLetter(key);
      }
      sampleref[int(key)-97].trigger();
    }
    else if(key == ' '){
        words.get(type_index).release();
    }
  }
  catch(Exception e){
    print(e);
  }
}



/*
ArrayList<Letter> letterList;


void setup() {
  size(1280, 900);
  noCursor();
  
  letterList = new ArrayList<Letter>();
  

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
  
  if ( key == 'a' ) sb.trigger();
  if ( key == 'b' ) so.trigger();
  if ( key == 'c' ) si.trigger();
  if ( key == 'd' ) sh.trigger();
  if ( key == 'e' ) sg.trigger();
  if ( key == 'f' ) sk.trigger();
  if ( key == 'g' ) sn.trigger();
  if ( key == 'h' ) sq.trigger();
  if ( key == 'i' ) sv.trigger();
  if ( key == 'j' ) st.trigger();
  if ( key == 'k' ) sw.trigger();
  if ( key == 'l' ) sy.trigger();
  if ( key == 'm' ) su.trigger();
  if ( key == 'n' ) sr.trigger();
  if ( key == 'o' ) sx.trigger();
  if ( key == 'p' ) sz.trigger();
  if ( key == 'q' ) sa.trigger();
  if ( key == 'r' ) sj.trigger();
  if ( key == 's' ) se.trigger();
  if ( key == 't' ) sm.trigger();
  if ( key == 'u' ) ss.trigger();
  if ( key == 'v' ) sl.trigger();
  if ( key == 'w' ) sd.trigger();
  if ( key == 'x' ) sf.trigger();
  if ( key == 'y' ) sp.trigger();
  if ( key == 'z' ) sc.trigger();
  if ( key == ' ' ) letterList = new ArrayList<Letter>();

}
*/
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
  
  AudioSample[] mapping = {sb,so,si,sh,sg,sk,sn,sq,sv,st,sw,sy,su,
                            sr,sx,sz,sa,sj,se,sm,ss,sl,sd,sf,sp,sc};
  sampleref = mapping;
 
}