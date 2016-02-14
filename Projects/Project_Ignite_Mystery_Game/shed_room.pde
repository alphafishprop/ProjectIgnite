//this amazing room programmed by James Wang
/**
 *@author James Wang
 **/
//last modified 8 February 2016

class shed_room extends Room {
  //please put variables here
  int timer;

  private Button test;

  void setup() {
    Boundary tempBoundary=new Boundary(100, width/2, 100, height/2);
    test=new Button(tempBoundary, color(0, 0, 0));
    timer=0;
  }

  void draw() {
    timer++;
    Boundary mousePosition=new Boundary(mouseX, mouseX,mouseY,mouseY);
    if(test.intersects(mousePosition)){
      test.changeColor(color(255,255,255));
    }
    else{
      test.changeColor(color(0,0,0));
    }
    test.draw();
  }
  
  void mouseClicked(){
    Boundary mousePosition=new Boundary(mouseX, mouseX, mouseY,mouseY);
    if(test.intersects(mousePosition)){
      println("here");
      test.changeColor(color(0,255,0));
      test.draw();
    }
    else{
      test.changeColor(color(255,0,0));
      test.draw();
    }
  }

  class Button {
    Boundary boundary;

    int colour;

    Button(Boundary boundary, int colour) {
      this.boundary=boundary;
      this.colour=colour;
    }

    void draw() {
      int left=boundary.getLeft();
      int right=boundary.getRight();
      int top=boundary.getTop();
      int bottom=boundary.getBottom();
      if (timer==1) {
        print("left: "+left+" right: "+right+" top: "+top+" bottom: "+bottom);
      }
      fill(colour);
      rect(left, top, right-left, bottom-top);
    }

    public void changeBoundaries(int left, int right, int top, int bottom) {
      this.boundary=new Boundary(left, right, top, bottom);
    }
    
    public void changeColor(int colour){
      this.colour=colour;
    }

    boolean intersects(Boundary otherBoundary) {
      return this.boundary.intersects(otherBoundary);
    }
  }


  //@todo: make non-square boundaries
  class Boundary {
    private int left;
    private int right;
    private int top;
    private int bottom;

    public Boundary(int left, int right, int top, int bottom) {
      this.left=left;
      this.right=right;
      this.top=top;
      this.bottom=bottom;
    }

    public int getLeft() {
      return this.left;
    }
    public int getRight() {
      return this.right;
    }
    public int getTop() {
      return this.top;
    }
    public int getBottom() {
      return this.bottom;
    }

    boolean intersects(Boundary otherBoundary) {
      int otherLeft=otherBoundary.getLeft();
      int otherRight=otherBoundary.getRight();
      int otherTop=otherBoundary.getTop();
      int otherBottom=otherBoundary.getBottom();

      //@todo make cleaner?
      return ((otherLeft<right&&otherLeft>left)||(otherRight<right&&otherRight>left))&&
        ((otherTop<bottom&&otherTop>top)||(otherBottom<bottom&&otherBottom>top));
    }
  }
}