public class Cluster {
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, float weight, int x, int y) {
      for(int i = 0; i < 7; i++) {
        Tendril t = new Tendril(len,i*2*PI/7.0+Math.random()*0.1,weight,x,y);
        t.show();
      }
    }
}
