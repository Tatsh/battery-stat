# battery_stat

Reads the battery information of a Mac and prints it as text, JSON, a percentage, or a coloured
prompt symbol.

```shell
battery-stat             # current_capacity=… max_capacity=… external_connected=… fully_charged=…
battery-stat json
battery-stat prompt
battery-stat percentage [emoji]
```

## Installation

Each [release](https://github.com/Tatsh/battery_stat/releases) has a universal binary for macOS
10.13 and later on Intel and macOS 11 and later on Apple silicon:

- `battery-stat-*-macos-universal-Release` is the binary. Rename it to `battery-stat`, make it
  executable with `chmod +x battery-stat`, and put it anywhere in `PATH`.
- `battery-stat-*-macos-universal-Release.pkg` installs it in `/usr/local/bin`.

The binary is signed ad hoc, so a copy downloaded with a web browser is quarantined. Remove the
quarantine with `xattr -d com.apple.quarantine battery-stat`, or open the package from its context
menu in Finder.

With MacPorts, run `sudo port install battery-stat`.

## Building

```shell
make
```

For a universal binary, run `make TARGET_ARCH='-arch arm64 -arch x86_64'`.
