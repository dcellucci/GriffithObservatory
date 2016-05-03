//---------------------------------------------------SHAPES
float decidedely(float curypos){
  if(curypos > 40){
    println("toohigh");
    return dely[int(random(0,2))];
  }
  else if(curypos < -40){
    println("toolow");
    return dely[int(random(2,4))];
  }
  else{
    return dely[int(random(0,4))];
  }
}

void renderShape(JSONObject shape, float alph){
    String type = shape.getString("type");
    float rot = 1.0*shape.getInt("rotate")*PI/180.0;
    
    int[] trans = shape.getJSONArray("translate").getIntArray();
    pushMatrix();
      translate(trans[0],trans[1]);
      pushMatrix();
        rotate(rot);
        if(type.equals("tri"))
          tricen(alph);
        if(type.equals("lu"))
          lucen(alph);
        if(type.equals("ld"))
          ldcen(alph);
        if(type.equals("circ"))
          circcen(alph);
      popMatrix();
    popMatrix();
}

void tri() {
  strokeWeight(6);
  strokeJoin(ROUND);
  stroke(255);
  triangle (0,0, -9,15, 9,15);
}

void circ() {
  strokeWeight(3);
  fill(#62c9d7);
  stroke(#62c9d7);
  ellipse(50,50,20,20);
  fill(255);
  stroke(255);
  
}

void lu() { //line up
  strokeWeight(8);
  translate(10,10);
  fill(#62c9d7);
  stroke(#62c9d7);
  line(0,9,9,0);
  fill(255);
  stroke(255);
}

void ld() { //line down
  strokeWeight(8);
  fill(#62c9d7);
  stroke(#62c9d7);
  translate(10,10);
  line(0,0,9,9);
  fill(255);
  stroke(255);
}

void tricen(float alph){
  fill(255*alph);
  stroke(255*alph);
  strokeWeight(6);
  strokeJoin(ROUND);
  triangle (0,-10, -9,5, 9,5);
}

void circcen(float alph) {
  strokeWeight(3);
  fill(alph*98,alph*201,alph*215);
  stroke(alph*98,alph*201,alph*215);
  ellipse(0,0,20,20);
}

void lucen(float alph) { //line up
  strokeWeight(8);
  fill(alph*98,alph*201,alph*215);
  stroke(alph*98,alph*201,alph*215);
  pushMatrix();
    rotate(PI/4.0);
    line(0,-6.5,0,6.5);
  popMatrix();
}

void ldcen(float alph) { //line down
  strokeWeight(8);
  fill(alph*98,alph*201,alph*215);
  stroke(alph*98,alph*201,alph*215);
  pushMatrix();
    rotate(-PI/4.0);
    line(0,-6.5,0,6.5);
  popMatrix();
}


//---------------------------------------------------A
void a() {
  pushMatrix();
  translate(50,45);
  tri ();
  popMatrix();
}

//---------------------------------------------------B
void b() {
  
  pushMatrix();
  translate(39,45);
  
    tri();
  
      pushMatrix();
    translate(22,13);
    rotate(PI);
    tri();
      popMatrix();
  
  popMatrix();
}

//---------------------------------------------------C
void c() {
  pushMatrix();
  translate(45,45);
  
    pushMatrix();
    translate(10,-15);
    tri();
    popMatrix();
  
    pushMatrix();
    translate(-5,10);
    tri();
    popMatrix();
  
  popMatrix();
}

//---------------------------------------------------D
void d() {
  pushMatrix();
  translate(13,0);
    circ();
  
    pushMatrix();
    translate(22,43);
    tri();
    popMatrix();
      
  popMatrix();
}

//---------------------------------------------------E
void e() {
  pushMatrix();
  translate(-1,10);
  
    pushMatrix();
    translate(25,19);
    tri();
    popMatrix();
  
  circ();
  translate(28,0);
  circ();
  
  popMatrix();
}

//---------------------------------------------------F
void f() {
  pushMatrix();
    
    translate(-2,10);
    
    pushMatrix();
    translate(24,18);
    tri();
    popMatrix();
    
    pushMatrix();
    circ();
    translate(80,43.5);
    tri();
    popMatrix();
    
  popMatrix();
}

//---------------------------------------------------G
void g() {
  pushMatrix();
  translate(3,3);
  
    pushMatrix(); // top left
    translate(25,33);
    rotate(PI+HALF_PI);
    tri();
    popMatrix();
    
    pushMatrix(); // top right
    translate(70,33);
    rotate(HALF_PI);
    tri();
    popMatrix();
    
    pushMatrix(); // bottom left
    translate(25,63);
    rotate(PI+HALF_PI);
    tri();
    popMatrix();
   
    pushMatrix();
    translate(13,13);
    circ();
    popMatrix();
    
  popMatrix();
}

//---------------------------------------------------H
void h() {
  pushMatrix();
  translate(-6,0);
   
    pushMatrix();
    translate(-10,13);
    circ();
    popMatrix();
    
    pushMatrix(); // top
    translate(70,27);
    tri();
    popMatrix();
    
    pushMatrix(); // bottom
    translate(70,70);
    rotate(PI);
    tri();
    popMatrix();
    
  popMatrix();
}

//---------------------------------------------------I
void i() {
  pushMatrix();
  translate(-5,2);
   
    pushMatrix();
    translate(-10,-10);
    circ();
    popMatrix();
    
    pushMatrix();
    translate(70,70);
    rotate(PI);
    tri();
    popMatrix();
    
  popMatrix();
}

//---------------------------------------------------J
void j() {
  pushMatrix();
  translate(-18,10);
    
    pushMatrix(); //top
    translate(30,30);
    tri();
    popMatrix();
    
    pushMatrix(); //bottom
    translate(60,68);
    rotate(PI);
    tri();
    popMatrix();
    
    pushMatrix();
    translate(70,26);
    lu();
    popMatrix();
    
    pushMatrix();
    translate(56,-30);
    circ();
    popMatrix();
    
  popMatrix();
}

//---------------------------------------------------K
void k() {
  pushMatrix();
  translate(-25,10);
    
    pushMatrix(); //left
    translate(45,35);
    tri();
    popMatrix();
    
    pushMatrix();
    translate(50,18);
    lu();
    popMatrix();
    
    pushMatrix();
    translate(72,18);
    ld();
    popMatrix();
    
    pushMatrix(); //right
    translate(105,35);
    tri();
    popMatrix();
    
  popMatrix();
}

//---------------------------------------------------L
void l() {
  pushMatrix();
  translate(-29,15);
    
    pushMatrix(); //left
    translate(-4,1);
    circ();
    popMatrix();
    
    pushMatrix();
    translate(50,17);
    lu();
    popMatrix();
    
    pushMatrix(); //down
    translate(85,28);
    rotate(PI);
    tri();
    popMatrix();
    
    pushMatrix(); //up
    translate(109,14);
    tri();
    popMatrix();
    
  popMatrix();
}

//---------------------------------------------------M
void m() {
  pushMatrix();
  translate(-15,21);
    
    pushMatrix();
    translate(39,58); //left bottom
    rotate(PI);
    tri();
    popMatrix();
    
    pushMatrix();
    translate(51,16);
    lu();
    popMatrix();
    
    pushMatrix();
    translate(90,0); //right top
    tri();
    popMatrix();
    
    pushMatrix();
    translate(90,58); //right bottom
    rotate(PI);
    tri();
    popMatrix();

    
  popMatrix();
}

//---------------------------------------------------N
void n() {
  pushMatrix();
  translate(-13,15);
    
    pushMatrix();
    translate(-11,-27);
    circ();
    popMatrix();
    
    pushMatrix();
    translate(17,-27);
    circ();
    popMatrix();
    
    pushMatrix();
    translate(39,58); //left bottom
    rotate(PI);
    tri();
    popMatrix();
    
    pushMatrix();
    translate(90,58); //right bottom
    rotate(PI);
    tri();
    popMatrix();
  
  
  popMatrix();
}

//---------------------------------------------------O
void o() {
  pushMatrix();
  translate(-20,10);
    
    pushMatrix(); //top
    translate(-18,-10);
    circ();
    popMatrix();
    
    pushMatrix(); //bottom
    translate(60,68);
    rotate(PI);
    tri();
    popMatrix();
    
    pushMatrix();
    translate(70,26);
    lu();
    popMatrix();
    
    pushMatrix();
    translate(56,-30);
    circ();
    popMatrix();
    
  popMatrix();
}

//---------------------------------------------------P
void p() {
  pushMatrix();
  translate(-26,20);
    
    pushMatrix(); //bottom
    translate(68,55);
    rotate(PI);
    tri();
    popMatrix();
    
    pushMatrix(); //bottom
    translate(38,55);
    rotate(PI);
    tri();
    popMatrix();
    
    pushMatrix(); //top
    translate(38,14);
    tri();
    popMatrix();
    
  pushMatrix();
  translate(7,-12);
    
    pushMatrix();
    translate(70,26);
    lu();
    popMatrix();
    
    pushMatrix();
    translate(56,-30);
    circ();
    popMatrix();
    
  popMatrix();
  
  popMatrix();
}

//---------------------------------------------------Q
void q() {
  pushMatrix();
  
  translate(5,0);
  
  pushMatrix();
  translate(13,20);
  tri();
  translate(30,0);
  tri();
  translate(35,40);
  tri();
  popMatrix();
  
  pushMatrix();
  translate(-36,5);
  circ();
  popMatrix();
  
  pushMatrix();
  translate(50,33);
  ld();
  popMatrix();
  
  popMatrix();
}

//---------------------------------------------------R
void r() {
  pushMatrix();
  
  translate(0,6);
  
  
  pushMatrix();
  translate(15,50);
  tri();
  popMatrix();
  
  pushMatrix();
  translate(85,50);
  tri();
  popMatrix();
  
  pushMatrix();
  translate(53,10);
  tri();
  popMatrix();
  
  pushMatrix();
  translate(15,23);
  lu();
  popMatrix();
    
  popMatrix();
}

//---------------------------------------------------S
void s() {
  pushMatrix();
  
  translate(7,10);
  
  pushMatrix();
  translate(15,20);
  tri();
  popMatrix();
  
  pushMatrix();
  rotate(PI);
  translate(-45,-55);
  tri();
  popMatrix();
  
  pushMatrix();
  translate(20,0);
  circ();
  popMatrix();
  
  popMatrix();
}

//---------------------------------------------------T
void t() {
  pushMatrix();
  translate(14,14);
  
  pushMatrix();
  rotate(PI);
  translate(-9,-44);
  tri();
  popMatrix();
  
  pushMatrix();
  translate(30,31);
  tri();
  popMatrix();
  
  pushMatrix();
  rotate(PI);
  translate(-32,-73);
  tri();
  popMatrix();
  
  pushMatrix();
  translate(51,63);
  tri();
  popMatrix();
  
  pushMatrix();
  translate(30,5);
  lu();
  popMatrix();
  
  pushMatrix();
  translate(13,-49);
  circ();
  popMatrix();
  
  popMatrix();
}

//---------------------------------------------------U
void u() {
  pushMatrix();
  translate(8,10);
  
  pushMatrix();
  translate(-38,0);
  circ();
  translate(28,0);
  circ();
  popMatrix();
  
  pushMatrix();
  translate(68,16);
  tri();
  popMatrix();
  
  pushMatrix();
  translate(68,16);
  tri();
  popMatrix();
  
  pushMatrix();
  rotate(PI);
  translate(-69,-58);
  tri();
  popMatrix();
  
  popMatrix();
}

//---------------------------------------------------V
void v() {
  pushMatrix();
  translate(13,-2);
  
  pushMatrix();
  translate(-50,30);
    pushMatrix();
    translate(68,16);
    tri();
    popMatrix();
  
    pushMatrix();
    rotate(PI);
    translate(-69,-58);
    tri();
    popMatrix();
  popMatrix();
  
  pushMatrix();
  translate(23,28);
  lu();
  popMatrix();
  
  pushMatrix();
  translate(9,-24);
  circ();
  popMatrix();
  
  popMatrix();
}

//---------------------------------------------------W
void w() {
  pushMatrix();
  
  translate(0,-15);
  
  pushMatrix();
  rotate(PI);
  translate(-13,-60);
  tri();
  popMatrix();
  
  pushMatrix();
    translate(-40,30);
    pushMatrix();
    translate(73,16);
    tri();
    popMatrix();
  
    pushMatrix();
    rotate(PI);
    translate(-75,-57);
    tri();
    popMatrix();
  popMatrix();
  
  pushMatrix();
  rotate(PI);
  translate(-55,-60);
  tri();
  popMatrix();
  
  
  pushMatrix();
  translate(58, 48);
  ld();
  popMatrix();
  
  pushMatrix();
  translate(38,32);
  circ();
  popMatrix();
  
  popMatrix();
}

//---------------------------------------------------X
void x() {
  pushMatrix();
  translate(2,2);
  
  pushMatrix();
  translate(-38,0);
    
    pushMatrix(); // top
    translate(70,27);
    tri();
    popMatrix();
    
    pushMatrix(); // bottom
    translate(70,70);
    rotate(PI);
    tri();
    popMatrix();
    
  popMatrix();
  
  pushMatrix();
  translate(-6,0);
    
    pushMatrix(); // top
    translate(70,27);
    tri();
    popMatrix();
    
    pushMatrix(); // bottom
    translate(70,70);
    rotate(PI);
    tri();
    popMatrix();
    
  popMatrix();
  
  popMatrix();
}

//---------------------------------------------------Y
void y() {
  pushMatrix();
  
  translate(2, 10);
  
  pushMatrix();
  rotate(PI);
  translate(-13,-40);
  tri();
  popMatrix();
  
  pushMatrix();
  translate(-38, 10);
  circ();
  popMatrix();
  
  pushMatrix();
  rotate(PI);
  translate(-43,-67);
  tri();
  popMatrix();
  
  pushMatrix();
  translate(50,26);
  lu();
  popMatrix();
  
  pushMatrix();
  translate (33,-29);
  circ();
  popMatrix();
  
  
  popMatrix();
}

//---------------------------------------------------Z
void z() {
  pushMatrix();
  translate(15,15);
  
  pushMatrix();
  translate(18,20);
  tri();
  popMatrix();
  
  pushMatrix();
  translate(-3,-23);
  circ();
  popMatrix();
  
  pushMatrix();
  rotate(PI);
  translate(-48,-62);
  tri();
  popMatrix();
  
  popMatrix();
}