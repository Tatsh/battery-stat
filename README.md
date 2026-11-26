# battery-stat

<!-- WISWA-GENERATED-README:START -->

[![C](https://img.shields.io/badge/C-00599C?logo=c)](<https://en.wikipedia.org/wiki/C_(programming_language)>)
[![GitHub tag (with filter)](https://img.shields.io/github/v/tag/Tatsh/battery-stat)](https://github.com/Tatsh/battery-stat/tags)
[![License](https://img.shields.io/github/license/Tatsh/battery-stat)](https://github.com/Tatsh/battery-stat/blob/master/LICENSE.txt)
[![GitHub commits since latest release (by SemVer including pre-releases)](https://img.shields.io/github/commits-since/Tatsh/battery-stat/v1.0.0/master)](https://github.com/Tatsh/battery-stat/compare/v1.0.0...master)
[![CodeQL](https://github.com/Tatsh/battery-stat/actions/workflows/codeql.yml/badge.svg)](https://github.com/Tatsh/battery-stat/actions/workflows/codeql.yml)
[![Dependabot](https://img.shields.io/badge/Dependabot-enabled-blue?logo=dependabot)](https://github.com/dependabot)
[![Stargazers](https://img.shields.io/github/stars/Tatsh/battery-stat?logo=github&style=flat)](https://github.com/Tatsh/battery-stat/stargazers)
[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/Tatsh/battery-stat/master.svg)](https://results.pre-commit.ci/latest/github/Tatsh/battery-stat/master)
[![CMake](https://img.shields.io/badge/CMake-6E6E6E?logo=cmake)](https://cmake.org/)
[![Prettier](https://img.shields.io/badge/Prettier-black?logo=prettier)](https://prettier.io/)

[![@Tatsh](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fpublic.api.bsky.app%2Fxrpc%2Fapp.bsky.actor.getProfile%2F%3Factor=did%3Aplc%3Auq42idtvuccnmtl57nsucz72&query=%24.followersCount&label=Follow+%40Tatsh&logo=bluesky&style=social)](https://bsky.app/profile/Tatsh.bsky.social)
[![Buy Me A Coffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-Tatsh-black?logo=buymeacoffee)](https://buymeacoffee.com/Tatsh)
[![Libera.Chat](https://img.shields.io/badge/Libera.Chat-Tatsh-black?logo=liberadotchat)](irc://irc.libera.chat/Tatsh)
[![Mastodon Follow](https://img.shields.io/mastodon/follow/109370961877277568?domain=hostux.social&style=social)](https://hostux.social/@Tatsh)
[![Patreon](https://img.shields.io/badge/Patreon-Tatsh2-F96854?logo=patreon)](https://www.patreon.com/Tatsh2)

<!-- WISWA-GENERATED-README:STOP -->

Reads the battery information of a Mac and prints it as text, JSON, a percentage, or a coloured
prompt symbol.

```shell
battery-stat             # current_capacity=… max_capacity=… external_connected=… fully_charged=…
battery-stat json
battery-stat prompt
battery-stat percentage [emoji]
```

## Installation

Each [release](https://github.com/Tatsh/battery-stat/releases) has a universal binary for macOS
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
