class Walk {
  String date;
  boolean withDog;
  int timeStarted, timeEnded, avgBpm, activeKcal, effort, duration;
  double distance;

  Walk(String date, String timeStarted, String timeEnded, boolean withDog, double distance, int avgBpm, int activeKcal, int effort) {
    this.date = date;
    this.timeStarted = parseHrMinSecTime(timeStarted);
    this.timeEnded = parseHrMinSecTime(timeEnded);
    this.withDog = withDog;
    this.distance = distance;
    this.avgBpm = avgBpm;
    this.activeKcal = activeKcal;
    this.effort = effort;

    // roll over to next day
    if (this.timeEnded < this.timeStarted) {
      this.timeEnded += 24 * 3600; // add 24 hours in seconds
    }
    this.duration = this.timeEnded - this.timeStarted;
  }

  int parseHrMinSecTime(String time) {
    var parts = time.split(":");
    return int(parts[0]) * 3600 + int(parts[1]) * 60 + int(parts[2]);
  }

  void draw(int offset) {
    var isBlinking = withDog && millis() / 100 % 2 == 0;
    fill(isBlinking ? #9db1e8 : #4f76e2);
    circle(
      map((float)activeKcal * frameCount, 0, width, 0, (float)distance * 100 + offset) / 100 % width,
      (map((float)avgBpm, 0, height, 0, (float)duration * frameCount) / 100 + random(effort * 0.1) + offset) % height,
      isBlinking ? 6 : 2
      );
  }
}
