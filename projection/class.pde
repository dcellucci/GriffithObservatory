class Word{
  ArrayList<Letter> letters;
  float x,y;
  float current_x,current_y;
  int status;
  
  float dist;
  
  //Constructor
  Word(String s){
    status = 0;
    letters = new ArrayList<Letter>();
 
    char[] chars = s.toCharArray();
    current_x = 0;
    current_y = 0;
    Letter temp;
    for(int i = 0; i < s.length(); i++){
      temp = new Letter(chars[i],current_x,current_y);
      letters.add(temp);
      int[] finpos = temp.getLastShapeCoord();
      println(finpos[0]+" "+finpos[1]);
      current_x = current_x+finpos[0]+40;
      current_y = current_y+finpos[1]+dely[int(random(4))];
    }
    dist = 0;
  }
  
  Word(char c){
    status = 1;
    letters = new ArrayList<Letter>();
    Letter tlet = new Letter(c,0,0);
    letters.add(tlet);
    dist = 10;
    boolean thereareintersections = true;
    int checkcount = 0;
    x = 100.0+random(width-200.0);
    y = height/2.0+random(height/4.0);
    float highestdist = 0;
    while(thereareintersections && checkcount<50){     
      thereareintersections=false;
      highestdist = 10;
      for(int i = 0; i < words.size();i++){
        Word tword = words.get(i);
        for(int j = 0; j < tword.letters.size(); j++){
          Letter tlett = tword.letters.get(j);
          float dist = pow((tlett.cx+tword.x-(x+tlet.cx)),2)+pow((tlett.cy+tword.y-(y+tlet.cy)),2);
          if(dist<15000){
            thereareintersections = true;
            x = 100.0+random(width-200.0);
            y = height/2.0+random(height/2.0);//+checkcount*5.0;
            float overlapdist = tword.dist;
            if(overlapdist < highestdist)
              highestdist = overlapdist;
          }   
        }
      }
      checkcount=checkcount+1;
    }
    if(checkcount == 50 && thereareintersections){
      
      dist=0.0;/*dist = 0.6*(highestdist+0.0);
      if(dist < 2.0)
        dist = 2.0;
      println(highestdist);
      println(dist);*/
    }
  }
  
  //Functions
  void display(){
    pushMatrix();
      translate(x,y);
      for(int i = 0; i < letters.size(); i++){
        letters.get(i).display(dist);
      }
    popMatrix();
  }
  
  void update(){
    if(status == 0){
      breathe();
    }
    else if(status == 1){
      breathe();
      drift();
    }
  }
  
  void breathe(){
    for(int i = 0; i < letters.size(); i++){
        letters.get(i).breathe();
    }
  }
  
  void drift(){
    y = y-1;
  }
  
  void release(){
    status = 1;
  }
  void addLetter(char c){

    if(letters.size() == 0)
      letters.add(new Letter(c,0,0));
    else{
      Letter tmpl = letters.get(letters.size()-1);
      letters.add( new Letter(c,tmpl.x+tmpl.lsx+40,tmpl.y+tmpl.lsy+decidedely(tmpl.lsy+tmpl.y)));
    }
  }
  
}
class Letter {
  //Data
  char whichLetter;
  float x, y;
  float breathetime;
  float cx, cy;
  float lsx,lsy;
  
  JSONArray shapes;

  //Constructor
  Letter(char c) {
    whichLetter = c;
    x = random(width);
    y = height/2+70-250;//height+ 50;
  } 
  
  Letter(char c, float x, float y){
    this.x = x;
    this.y = y;
    whichLetter = c;
    
    JSONObject jsonletter = values.getJSONObject((int)whichLetter-97);
    shapes = jsonletter.getJSONArray("shapes");
    int[] tpos;
    
    cx = 0;
    cy = 0;
    for(int i = 0; i < shapes.size();i++){
      tpos = shapes.getJSONObject(i).getJSONArray("translate").getIntArray();
      cx = cx+1.0*tpos[0]/shapes.size();
      cy = cy+1.0*tpos[1]/shapes.size();
    }
    
    tpos = shapes.getJSONObject(shapes.size()-1).getJSONArray("translate").getIntArray();
    lsx = 1.0*tpos[0];
    lsy = 1.0*tpos[1];    
  }
  
  /*
  void swap(char newOne) {

    if (int(newOne) >=97 && int(newOne) <=122)
      whichLetter = newOne;

    if (newOne == ' ' || int(newOne)==127 || int(newOne)==8)
      whichLetter = ' ';
  }
  */

  //Functions
  void display(float alph){
      pushMatrix();
      //println(y+1.0*breatheamp*sin(1.0*breathetime/breathefreq*2.0*PI));
      float tval = sin(breathetime*2.0*PI);
      translate(x,y+1.0*breatheamp*tval);
      fill(255,255,255,50);
      noStroke();
      //ellipse(cx,cy,100,100);
      fill(255,255,255,255);
      scale(1.0*alph/10.0);
      JSONObject tshape;
      for(int i = 0; i < shapes.size(); i++){
        tshape = shapes.getJSONObject(i);  
        renderShape(tshape,1.0*alph/10.0);
      }
      popMatrix();
  }
  
  void breathe(){
    breathetime = breathetime+1.0/breathefreq;
  }
  
  int[] getLastShapeCoord(){
      return shapes.getJSONObject(shapes.size()-1).getJSONArray("translate").getIntArray();
  }
  
  /*
  void display() {

    //y -= 2;
    
    pushMatrix();
    translate(x, y);
    switch(whichLetter) {

    case'a':
      a();
      break;

    case 'b':
      b();
      break;

    case 'c':
      c();
      break;

    case 'd':
      d();
      break;

    case 'e':
      e();
      break;

    case 'f':
      f();
      break;

    case'g':
      g();
      break;

    case 'h':
      h();
      break;

    case 'i':
      i();
      break;

    case 'j':
      j();
      break;

    case 'k':
      k();
      break;

    case 'l':
      l();
      break;

    case 'm':
      m();
      break;

    case 'n':
      n();
      break;

    case 'o':
      o();
      break;

    case 'p':
      p();
      break;

    case 'q':
      q();
      break;

    case 'r':
      r();
      break;

    case 's':
      s();
      break;

    case 't':
      t();
      break;

    case 'u':
      u();
      break;

    case 'v':
      v();
      break;

    case 'w':
      w();
      break;

    case 'x':
      x();
      break;

    case 'y':
      y();
      break;

    case 'z':
      z();
      break;
    }
    popMatrix();
  }
  */
}