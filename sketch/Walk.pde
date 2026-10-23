class Walk {
  String date, timeStarted, timeEnded;
  boolean withDog;
  double distance;
  int avgBpm, activeKcal, effort;

  Walk(String date, String timeStarted, String timeEnded, boolean withDog, double distance, int avgBpm, int activeKcal, int effort) {
    this.date = date;
    this.timeStarted = timeStarted;
    this.timeEnded = timeEnded;
    this.withDog = withDog;
    this.distance = distance;
    this.avgBpm = avgBpm;
    this.activeKcal = activeKcal;
    this.effort = effort;
  }
}
