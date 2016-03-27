class Letter {
  //Data
  char whichLetter;
  float x, y;

  //Constructor
  Letter(char c) {
    whichLetter = c;
    x = random(width);
    y = height/2+70-250;//height+ 50;
  } 
  //  //Second Constructor with no arguments. Yep, you can have multiple constructors. 
  //  Letter(float x, float y){
  //     this.x = x;
  //     this.y = y;
  //     //Pick a random undercase char, a-z. According to the ASCII table 
  //     //a is represented by the decimal value 97, and upward. So we need to pick a rand # from 97-122
  //     //an convert it to a char (character)
  //     //http://www.asciitable.com/index/asciifull.gif
  //     whichLetter = (char)(97+floor(random(26))); 
  //  }
  

  void swap(char newOne) {

    if (int(newOne) >=97 && int(newOne) <=122)
      whichLetter = newOne;

    if (newOne == ' ' || int(newOne)==127 || int(newOne)==8)
      whichLetter = ' ';
  }


  //Functions
  void display() {

    y -= 2;
    
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
}