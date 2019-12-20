Bacteria [] bruh;  
 void setup()   
 {     
   size(600,600);
   bruh = new Bacteria[50];   
   for(int i = 0; i< bruh.length;i++){
    bruh[i] = new Bacteria(); 
   }
    background(255);
 }   
 
 void draw()   
 {  
   for( int i = 0; i<bruh.length;i++)
   {
     bruh[i].show();
     bruh[i].move();
   }
 }  
 class Bacteria    
 {     
   int myX, myY, myColor;
   Bacteria()
   {
     myX = (int)(Math.random()*500);
     myY = (int)(Math.random()*500);
     myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   }
   void move ()
   {
     if(mouseX < myX){
       myX = myX + (int)(Math.random()*10)-20;
     }else{
       myX = myX + (int)(Math.random()*30)+1;
     }
     if(mouseY < myY){
     myY = myY + (int)(Math.random()*10)-20;
     }else{
     myY = myY +(int)(Math.random()*30)+1;
   }
   }
   void show()
   {
     fill(myColor);
     ellipse(myX,myY,4,4);
   }
 }    