# Dear Data 100

An assignment for `#CreativeCoding`, part of the [IN1007 Programming in Java](https://curriculum.citystgeorges.ac.uk/subject/2026/IN1007) module @ [City St George's, University of London](https://www.citystgeorges.ac.uk). It is inspired by the [Dear Data](https://www.dear-data.com/theproject) project, using [Processing](https://processing.org) to explore creative coding and data visualisation.

My topic is observations from various walks that I do, each one logged with the following data points:
- Date (YYYY.MM.DD)
- Time Started (HH:MM)
- Duration (HH:MM:SS)
- With Dog (True/False)
- Distance (km)
- Average Heart Rate (BPM)
- Active Kilocalories
- Effort (1-10)

## Structure

- [`sketch/`](sketch/) : The Processing sketch folder
  - [`sketch.pde`](sketch/sketch.pde) : The sketch's entry point
  - [`data/`](sketch/data/) : The data

## Running

Open Processing ([download here](https://processing.org/download)) and add the [`sketch/`](sketch/) folder (rename if needed) to your sketchbook. Then open the sketch and run it.

Or using the CLI:

```sh
processing cli --sketch=path/to/sketch/folder --run
```

[Zed](https://zed.dev) users can also use the provided [task](.zed/tasks.json).

> [!NOTE]
> Using `processing` requires it to be added to your PATH (also needed for the Zed task). This is typically done automatically during Linux and Windows installations; however, on macOS, you will need to either select `Tools` > `Install "processing"` in Processing and install for all users, or add it to your PATH manually.
>
> You can also run the executable directly by replacing `processing` with the path to the executable (inside the `.app` bundle, e.g. `/Applications/Processing.app/Contents/MacOS/Processing`), and/or change the [`command`](.zed/tasks.json#L4) value in the Zed task.

## License

This repository is licensed under the [MIT License](LICENSE).
