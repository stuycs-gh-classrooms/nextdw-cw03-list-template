/*===========================
  OrbList

  Class to represent a Linked List of OrbNodes.

  Instance Variables:
    OrbNode front:
      The first element of the list.
      Initially, this will be null.

  Methods to work on:

    0. getSelected()
    1. insertAfter()
    2. remove()

  When working on these methods, make sure to
  account for null values appropraitely. When the program
  is run, no NullPointerExceptions should occur.
  =========================*/

class OrbList {

  OrbNode front;

  /*===========================
    Contructor
    Does very little.
    You do not need to modify this method.
    =========================*/
  OrbList() {
    front = null;
  }//constructor

  /*===========================
    getSelected(x, y)

    Returns:
      null if (x, y) is not over any OrbNode
                    or
      The OrbNode that(x, y) is over

    Note that you have been given an isSelected(x, y)
    method in the Orb class.
    =========================*/
  OrbNode getSelected(int x, int y) {

    return null;
  }//getSelected

  /*===========================
    insertAfter(o, left)

    Inserts o after left in the list. Make sure to change
    all the relevant connections.

    Assume that o and left are both not null, and that
    left is in the list.
    =========================*/
  void insertAfter(OrbNode o, OrbNode left) {

  }//insert

  /*===========================
    remove(n)

    Remove n from the list. Make sure to change
    all the relevant connections.
    =========================*/
  void remove(OrbNode n) {

  }//remove

  /*===========================
    addFront(OrbNode o)

    Insert o to the beginning of the list.
    =========================*/
  void addFront(OrbNode o) {
    if (front == null) {
      front = o;
    }//adding to the front
    else {
      o.next = front;
      front.previous = o;
      front = o;
    }
  }//addFront

  /*===========================
    removeFront()

    Remove the element at the front of the list, i.e.
    after this method is run, the former second element
    should now be the first (and so on).
    =========================*/
  void removeFront() {
    println("rm f");
    if (front != null) {
      front.previous = null;
      front = front.next;
    }//there's a node to remove
  }//removeFront


  /*===========================
    display(int springLength)

    Display all the nodes in the list using
    the display method defined in the OrbNode class.
    =========================*/
  void display(int springLength) {
    OrbNode curr = front;
    while (curr != null) {
      curr.display(springLength);
      curr = curr.next;
    }
  }//display

  /*===========================
    applySprings(int springLength, float springK)

    Use the applySprings method in OrbNode on each
    element in the list.
    =========================*/
  void applySprings(int springLength, float springK) {
    OrbNode curr = front;
    while (curr != null) {
      curr.applySprings(springLength, springK);
      curr = curr.next;
    }
  }//applySprings

  /*===========================
    run(boolean bounce, float damp)

    Call run on each node in the list.
    =========================*/
  void run(boolean bounce, float damp) {
    OrbNode curr = front;
    while (curr != null) {
      curr.run(bounce, damp);
      curr = curr.next;
    }
  }//applySprings



}//OrbList
