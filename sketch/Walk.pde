class Walk {
  String date, timeStarted, timeEnded;
  boolean withDog;
  double distance;
  int avgBpm, activeKcal, effort, duration;

  Walk(String date, String timeStarted, String timeEnded, boolean withDog, double distance, int avgBpm, int activeKcal, int effort) {
    this.date = date;
    this.timeStarted = timeStarted;
    this.timeEnded = timeEnded;
    this.withDog = withDog;
    this.distance = distance;
    this.avgBpm = avgBpm;
    this.activeKcal = activeKcal;
    this.effort = effort;

    var startSeconds = parseHrMinSecTime(timeStarted);
    var endSeconds = parseHrMinSecTime(timeEnded);
    // roll over to next day
    if (endSeconds < startSeconds) {
      endSeconds += 24 * 3600; // add 24 hours in seconds
    }
    this.duration = endSeconds - startSeconds;
  }

  int parseHrMinSecTime(String time) {
    var parts = time.split(":");
    return int(parts[0]) * 3600 + int(parts[1]) * 60 + int(parts[2]);
  }
}
