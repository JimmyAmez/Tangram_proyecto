// Implementar:
// 1. La creación de las siete distintas piezas (por ahora son todas Rect) 
// 2. La interacción: selección y manipulación de las piezas (ratón, teclas, touch...)
// 3. La evaluacion de la solucion
// 4. El modo de creacion de nuevos problemas



Shape[] shapes;
ArrayList button= new ArrayList(7);

boolean drawGrid = true,N_1= false,N_2= false,N_3= false,N_4= false,N_5= false,check=false,menu_display=true; 
float rot;
PVector canva_position;
int Flag=0;
PImage img,answer,menu;

void setup() {
  size(900, 900);
  background(255, 255, 255);
  shapes = new Shape[7];
   for (int i=0; i<7; i++)
     button.add("false");
   
   
  shapes[0]=new Rect(#CD5C5C,100*1.41421);
  shapes[1]=new Trian(#8F3A84 ,400.0  ,200.0 , 200.0);
  shapes[2]=new Trian(#AF073E ,400.0  ,200.0 , 200.0);
  shapes[3]=new Trian(#1507AE,200.0,100.0,100.0);
  shapes[4]=new Trian(#CFB100,200.0,100.0,100.0);
  shapes[5]=new Trian(#21CF00,282.8427,100*1.41421,100*1.41421);
  shapes[6]=new Rhomb(#7E01ED,-50.0,-50.0,150.0,-50.0,50.0,50.0,-150.0,50.0 );
 
   //100*1.41421
}

void drawGrid(float scale) {
  push();
  strokeWeight(1);
  int i;
  for (i=0; i<=width/scale; i++) {
    stroke(0, 0, 0, 20);
    line(i*scale, 0, i*scale, height);
  }
  for (i=0; i<=height/scale; i++) {
    stroke(0, 0, 0, 20);
    line(0, i*scale, width, i*scale);
  }
  pop();
}

boolean check(){
  
  
  int Flag=0;
  for (int i = 0; i < width; i++) {
     for (int a = 0; a < height; a++) {
      color c= get(i,a);
      
      if( c==-16777216){
         Flag+=1;
      }
     
  
  }}
  
  if(Flag==0){
    
    return true; }
  else{return false;}
  
   }
void menu(){
  push();
  stroke(200);
  fill(200);
  menu = loadImage("Menu.jpg");
  image(menu,700,0);
  pop();


}

void draw() {
  background(255);
  if(N_1){
 
  img = loadImage("pez.jpg");
  
  image(img,0,0);}
   
  if(N_2){
 
  img = loadImage("barco.jpg");
  
  image(img,0,0);} 
  
  if(N_3){

  img = loadImage("cisne.jpg");
  image(img,0,0);} 
 
  if(N_4){
 
  img = loadImage("vela.jpg");
  image(img,0,0);} 
  if(N_5){
 
  img = loadImage("silla.jpg");
  image(img,0,0);} 
  

  
  if (drawGrid)
    drawGrid(10);
  
   
  for (Shape shape : shapes)
    shape.draw();
  if(menu_display)
     menu();
  
   for (int i = 0; i < 7; i = i+1){
    if ( button.get(i)=="true" ){
      canva_position=new PVector(mouseX, mouseY);
      shapes[i].setPosition(canva_position);}
   }
  
 

  if (check){
    
    if(check()){
      push();
      
      answer = loadImage("correct.jpg");

      answer.resize(204,100);
      image(answer,700,650);
      pop();
      
    }
    else{
      push();
      fill(100);
      answer = loadImage("incorrect.jpg");
      answer.resize(204,100);
      image(answer,700,650);
      pop();
    }
       }
            
    
        





}



void keyPressed() {
  
  if (key == 'g' || key == 'G')
    drawGrid = !drawGrid;

   if (key == 'M' || key == 'm')
    menu_display = !menu_display;
   
   if(key=='1'){
    N_1= !N_1;   
   } 
   if(key=='2'){
    N_2= !N_2;   
   }
   if(key=='3'){
    N_3= !N_3;   
   }
   if(key=='4'){
    N_4= !N_4;   
   }
   if(key=='5'){
    N_5= !N_5;   
   }
  if(key=='c'){
    check= !check;
     }
  
    
    
  if (key == 'S' || key == 's'){
    for (int i = 0; i < 7; i = i+1)
      shapes[i].setHue(0);
    
    save("imagen.jpg");
    
  }
    if (key == 'A' || key == 'a'){
    for (int i = 0; i < 7; i = i+1)
      shapes[i].setPosition(new PVector(random(0, width-300), random(0, height)));
    
    
    
  }
  
  
  for (int i = 0; i < 7; i = i+1){
    if ( shapes[i].location(mouseX,mouseY)==true && 
    button.get(i)=="true"){
    
      if(key==' '){
         rot=rot+PI/4; 
         shapes[i].setRotation(rot);}
      if(key=='r' && i==6){
         
         shapes[6].setReflection();}   
    }
  }

}

void mouseClicked() {
  for (int i = 0; i < 7; i = i+1){
  if (button.get(i)=="true"   && shapes[i].location(mouseX, mouseY)==true){
    button.set(i,"false");

  }
  else{if(button.get(i)=="false"   && shapes[i].location(mouseX, mouseY)==true) button.set(i,"true");}
  
  }
}
