set(MACOSX_BUNDLE_GUI_IDENTIFIER "com.example")
set(CMAKE_MACOSX_BUNDLE YES)
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "iPhone Developer")

set(CMAKE_SYSTEM_NAME "Darwin" CACHE STRING "System name" FORCE)
set(CMAKE_OSX_SYSROOT "iphoneos" CACHE STRING "System root for iOS" FORCE)
set(CMAKE_OSX_DEPLOYMENT_TARGET "9.3" CACHE STRING "iOS deployment target" FORCE)

set(__iphoneos_archs "armv7 armv7s arm64")
set(__iphonesimulator_archs "i386 x86_64")

set(CMAKE_XCODE_ATTRIBUTE_ARCHS[sdk=iphoneos*] "${__iphoneos_archs}")
set(CMAKE_XCODE_ATTRIBUTE_VALID_ARCHS[sdk=iphoneos*] "${__iphoneos_archs}")

set(CMAKE_XCODE_ATTRIBUTE_ARCHS[sdk=iphonesimulator*] "${__iphonesimulator_archs}")
set(CMAKE_XCODE_ATTRIBUTE_VALID_ARCHS[sdk=iphonesimulator*] "${__iphonesimulator_archs}")

if("$ENV{IOS_DEVELOPMENT_TEAM}" STREQUAL "")
  message(FATAL_ERROR "Please set IOS_DEVELOPMENT_TEAM environment variable")
endif()

set(
    CMAKE_XCODE_ATTRIBUTE_DEVELOPMENT_TEAM
    "$ENV{IOS_DEVELOPMENT_TEAM}"
)
