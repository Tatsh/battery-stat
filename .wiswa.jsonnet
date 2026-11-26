{
  uses_user_defaults: true,
  project_name: 'battery-stat',
  project_type: 'c',
  version: '0.0.1',
  description: 'Read Apple battery information as JSON, text, or a shell prompt.',
  keywords: ['battery', 'cli', 'iokit', 'macos', 'prompt'],
  license: 'MIT',
  security_policy_supported_versions: { '0.0.x': ':white_check_mark:' },
  clang_format_args: 'src/*.c',
  // .github/workflows/codeql.yml is maintained by hand to build on macOS.
  want_codeql: false,
  want_tests: false,
  want_winget: false,
}
