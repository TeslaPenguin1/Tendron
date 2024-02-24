class Tendril {
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private float myStrokeWeight;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, float weight, int x, int y) {
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
    myStrokeWeight = weight;
  }
  public void show() {
    strokeWeight(myStrokeWeight);
    int x0 = myX;
    int y0 = myY;
    for(int i = 0; i < myNumSegments; i++) {
      stroke(HSBtoRGB(i/(float)myNumSegments,1,1));
      myAngle += Math.random()*0.4 - 0.2;
      int x1 = x0 + (int)(SEG_LENGTH*Math.cos(myAngle));
      int y1 = y0 + (int)(SEG_LENGTH*Math.sin(myAngle));
      line(x0,y0,x1,y1);
      x0 = x1;
      y0 = y1;
    }
    if(myNumSegments > 3) {
      Cluster c = new Cluster(myNumSegments/3,myStrokeWeight/2.0,x0,y0);
    }
  }
}
