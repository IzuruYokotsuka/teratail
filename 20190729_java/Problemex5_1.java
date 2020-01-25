import java.util.Collections;
import java.util.ArrayList;

public class Problemex5_1 {
  public static void main(String[] args) {
    ArrayList<Integer> al = new ArrayList<Integer>();
    for(int i = 0 ; i < 11 ; i++) {
      al.add(i);
    }
    Collections.shuffle(al);
    System.out.println(al);
  }
}
