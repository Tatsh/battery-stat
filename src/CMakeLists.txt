add_executable(${CMAKE_PROJECT_NAME} battery_stat.c)
set_target_properties(
  ${CMAKE_PROJECT_NAME} PROPERTIES C_EXTENSIONS ON C_STANDARD 23 C_STANDARD_REQUIRED ON
                                   COMPILE_WARNING_AS_ERROR ON)
target_compile_options(
  ${CMAKE_PROJECT_NAME}
  PRIVATE -Wall
          -Wconversion
          -Wdeprecated-declarations
          -Wempty-body
          -Wfloat-conversion
          -Wimplicit-function-declaration
          -Wincompatible-pointer-types
          -Wint-conversion
          -Wmissing-braces
          -Wmissing-field-initializers
          -Wparentheses
          -Wpedantic
          -Wpointer-sign
          -Wreturn-type
          -Wshadow
          -Wsign-compare
          -Wsign-conversion
          -Wswitch
          -Wuninitialized
          -Wunreachable-code
          -Wunused-function
          -Wunused-label
          -Wunused-parameter
          -Wunused-value
          -Wunused-variable
          -Wwrite-strings
          -Wno-gnu-empty-struct
          -Wno-language-extension-token
          -Wno-missing-prototypes
          -Wno-strict-prototypes
          -Wno-trigraphs
          -Wno-unknown-pragmas)
target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE "-framework CoreFoundation" "-framework IOKit")
