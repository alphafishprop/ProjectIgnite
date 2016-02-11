//this amazing room programmed by James Wang
/**
*@author James Wang
**/
//last modified 8 February 2016

class shed_room extends Room{
  //please put variables here
  int timer;
  
  void setup(){
    timer=0;
  }
  
  void draw(){
    timer++;
  }
  
  class SquareButton{
     int left;
     int right;
     int top;
     int bottom;
     
     int colour;
     
     SquareButton(int left, int right, int top, int bottom, int colour){
       this.left=left;
       this.right=right;
       this.top=top;
       this.bottom=bottom;
       this.colour=colour;
     }
     
     void draw(){
       fill(colour);
       rect(left,top,right-left,bottom-top);
     }
  }
}