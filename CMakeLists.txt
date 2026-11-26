cmake_minimum_required(VERSION 3.31)
# The x86_64 slice runs on macOS 10.13 and later. Apple silicon starts at macOS 11. The deployment
# target is set before project() to apply to every target.
if(APPLE AND NOT CMAKE_OSX_DEPLOYMENT_TARGET)
  set(CMAKE_OSX_DEPLOYMENT_TARGET
      "10.13"
      CACHE STRING "Minimum macOS version.")
endif()
project(
  battery-stat
  VERSION 0.0.1
  DESCRIPTION "Read Apple battery information as JSON, text, or a shell prompt."
  HOMEPAGE_URL "https://github.com/Tatsh/battery-stat"
  LANGUAGES C)

include(FeatureSummary)
include(GNUInstallDirs)

option(BUILD_DOCS "Build documentation." OFF)
option(INSTALL_DOCS "Install documentation." OFF)

if(BUILD_DOCS)
  set(DOXYGEN_GENERATE_TAGFILE "${CMAKE_BINARY_DIR}/html/${CMAKE_PROJECT_NAME}.tags")
  set(DOXYGEN_INTERACTIVE_SVG YES)
  set(DOXYGEN_MARKDOWN_ID_STYLE GITHUB)
  set(DOXYGEN_USE_MDFILE_AS_MAINPAGE "${CMAKE_SOURCE_DIR}/README.md")
  find_package(Doxygen REQUIRED COMPONENTS dot)
  doxygen_add_docs(docs README.md src ALL)
  if(INSTALL_DOCS)
    install(
      DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/docs/html
      DESTINATION ${CMAKE_INSTALL_DATAROOTDIR}/doc/${CMAKE_PROJECT_NAME}-${CMAKE_PROJECT_VERSION})
  endif()
endif()

feature_summary(WHAT ALL FATAL_ON_MISSING_REQUIRED_PACKAGES)

add_subdirectory(src)

install(TARGETS ${CMAKE_PROJECT_NAME})
include(CPack)
