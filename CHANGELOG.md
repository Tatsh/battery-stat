<!-- markdownlint-configure-file {"MD024": { "siblings_only": true } } -->

# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.1/), and this project
adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [unreleased]

## [0.0.1] - 2026-11-26

### Added

- CMake build, including universal binaries with `'-DCMAKE_OSX_ARCHITECTURES=arm64;x86_64'`.
- Support for macOS 10.13 and later on Intel and macOS 11 and later on Apple silicon.
- Releases publish an ad hoc signed universal binary and a package that installs the binary in
  `/usr/local/bin`.

### Fixed

- Usage message for unrecognised arguments shows the name the program was invoked with instead of
  hard-coded `battery_stat` (the installed command is `battery-stat`), and opens with
  `Run <name> in one of the following forms:` instead of `usage:`.

[unreleased]: https://github.com/Tatsh/battery-stat/compare/v0.0.1...HEAD
[0.0.1]: https://github.com/Tatsh/battery-stat/releases/tag/v0.0.1
