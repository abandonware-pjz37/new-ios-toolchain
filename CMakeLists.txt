cmake_minimum_required(VERSION 3.14)
project(foo)

add_library(foo foo.cpp)
add_executable(boo boo.cpp)
target_link_libraries(boo PRIVATE foo)

function(print_var x)
  message("${x}: ${${x}}")
endfunction()

print_var(MACOSX_BUNDLE_GUI_IDENTIFIER)
print_var(CMAKE_XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY)

print_var(CMAKE_SYSTEM_NAME)
print_var(CMAKE_OSX_SYSROOT)

print_var(CMAKE_XCODE_ATTRIBUTE_ARCHS[sdk=iphoneos*])
print_var(CMAKE_XCODE_ATTRIBUTE_VALID_ARCHS[sdk=iphoneos*])

print_var(CMAKE_XCODE_ATTRIBUTE_ARCHS[sdk=iphonesimulator*])
print_var(CMAKE_XCODE_ATTRIBUTE_VALID_ARCHS[sdk=iphonesimulator*])

print_var(CMAKE_XCODE_ATTRIBUTE_DEVELOPMENT_TEAM)

print_var(CMAKE_OSX_ARCHITECTURES)
