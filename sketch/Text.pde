class Text {
  String label = "";
  int size = 12, updatedAt = 0;

  void draw() {
    if (frameCount - updatedAt < 30) {
      return;
    }

    fillBlinkColour(isBlinkOn());
    textAlign(CENTER, CENTER);
    textSize(size);
    text(label, width / 2, height / 2);
  }

  void update(String label, int size) {
    this.label = label;
    this.size = size;
    updatedAt = frameCount;
  }
}
