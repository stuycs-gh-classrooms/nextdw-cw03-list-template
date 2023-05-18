class OrbNode extends Orb {

  OrbNode next;
  OrbNode previous;

  OrbNode(int x, int y, int s, float m) {
    super(x, y, s, m);
  }//constructor

  void applySprings(int springLength, float springK) {
    if (next != null) {
      PVector s = this.getSpring(next, springLength, springK);
      this.applyForce(s);
    }//there's a next
    if (previous != null) {
      PVector s = this.getSpring(previous, springLength, springK);
      this.applyForce(s);
    }//there's a previous
  }//applySprings

  void display(int springLength) {
    super.display();
    if (next != null) {
      float d = this.position.dist(next.position);
      if (d > springLength) {
        stroke(0, 255, 0);
      }//extended spring
      else if (d < springLength) {
        stroke(255, 0, 0);
      }//compressed spring
      else {
        stroke(0);
      }//just right spring
      line(this.position.x, this.position.y, next.position.x, next.position.y);
    }//draw spring
    stroke(0); //reset stroke at the end
  }//display

}//class OrbNode
