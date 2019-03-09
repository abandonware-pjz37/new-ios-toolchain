set(MACOSX_BUNDLE_GUI_IDENTIFIER "com.example")
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "iPhone Developer")

set(CMAKE_SYSTEM_NAME "iOS" CACHE STRING "System name" FORCE)
set(CMAKE_OSX_DEPLOYMENT_TARGET "9.3" CACHE STRING "iOS deployment target" FORCE)

set(__iphoneos_archs armv7 armv7s arm64)
set(__iphonesimulator_archs i386 x86_64)

set(
    CMAKE_OSX_ARCHITECTURES
    "${__iphoneos_archs};${__iphonesimulator_archs}"
    CACHE
    STRING
    "iOS architectures"
    FORCE
)

if("$ENV{IOS_DEVELOPMENT_TEAM}" STREQUAL "")
  message(FATAL_ERROR "Please set IOS_DEVELOPMENT_TEAM environment variable")
endif()

set(
    CMAKE_XCODE_ATTRIBUTE_DEVELOPMENT_TEAM
    "$ENV{IOS_DEVELOPMENT_TEAM}"
)
