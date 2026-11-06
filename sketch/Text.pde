class Text {
  String label = "";
  int size = 12, updatedAt = 0;

  void draw() {
    if (frameCount - updatedAt < 30) {
      return;
    }

    fill(millis() / 100 % 2 == 0 ? #9db1e8 : #4f76e2);
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
