ArrayList<Walk> walks = new ArrayList<Walk>();
final int FRAME_RATE = 120;
int offset;

void setup() {
  surface.setTitle("Dear Data 100");
  size(804, 804);
  frameRate(FRAME_RATE);

  for (var row : loadTable("walks.csv", "header").rows()) {
    walks.add(new Walk (
      row.getString("Date (YYYY.MM.DD)"),
      parseHrMinSecTime(row.getString("Time Started (HH:MM:SS)")),
      parseHrMinSecTime(row.getString("Time Ended (HH:MM:SS)")),
      row.getString("With Dog (True/False)").equals("True"),
      row.getDouble("Distance (km)"),
      row.getInt("Average Heart Rate (BPM)"),
      row.getInt("Active Kilocalories"),
      row.getInt("Effort (1-10)")
      ));
  }
}

void draw() {
  background(#0d0d0d);
  noStroke();

  if (frameCount % (FRAME_RATE * 1.5) == 0) {
    offset = (int)random(walks.get((int)random(walks.size())).duration);
  }

  for (var walk : walks) {
    walk.draw(offset);
  }
}

void mouseWheel(MouseEvent e) {
  offset += e.getCount() * (e.isAltDown() ? 16 : 2);
}

int parseHrMinSecTime(String time) {
  var parts = time.split(":");
  return int(parts[0]) * 3600 + int(parts[1]) * 60 + int(parts[2]);
}
