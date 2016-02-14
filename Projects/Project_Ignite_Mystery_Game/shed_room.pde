//this amazing room programmed by James Wang
/**
*@author James Wang
**/
//last modified 8 February 2016

class shed_room extends Room{
  //please put variables here
  int timer;
  
  private SquareButton test;
  
  void setup(){
    test=new SquareButton(0,width/2,0,height/2, color(0,0,0));
    timer=0;
  }
  
  void draw(){
    timer++;
    test.draw();
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
       if(timer==1){
         print("left: "+left+" right: "+right+" top: "+top+" bottom: "+bottom);
       }
       fill(colour);
       rect(left,top,right-left,bottom-top);
     }
     
     boolean intersects(Boundary otherBoundary){
       return this.boundary.intersects(otherBoundary);
     }
  }
  
  
  //@todo: make non-square boundaries
  class Boundary{
    private int left;
    private int right;
    private int top;
    private int bottom;
    
    public Boundary(int left, int right, int top, int bottom){
      this.left=left;
      this.right=right;
      this.top=top;
      this.bottom=bottom;
    }
    
    public void changeBoundaries(int left, int right, int top, int bottom){
    }
    
    boolean intersects(Boundary otherBoundary){
      
    }
  }
}