# Install script for directory: /home/louis/Bureau/traitementCpp/dbcppp

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdbcppp.so.3.8.0" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdbcppp.so.3.8.0")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdbcppp.so.3.8.0"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/louis/Bureau/traitementCpp/dbcppp/build/libdbcppp.so.3.8.0")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdbcppp.so.3.8.0" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdbcppp.so.3.8.0")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdbcppp.so.3.8.0"
         OLD_RPATH "/home/louis/Bureau/traitementCpp/dbcppp/build/third-party/libxmlmm:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdbcppp.so.3.8.0")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/louis/Bureau/traitementCpp/dbcppp/build/libdbcppp.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dbcppp" TYPE FILE FILES
    "/home/louis/Bureau/traitementCpp/dbcppp/include/dbcppp/Attribute.h"
    "/home/louis/Bureau/traitementCpp/dbcppp/include/dbcppp/AttributeDefinition.h"
    "/home/louis/Bureau/traitementCpp/dbcppp/include/dbcppp/BitTiming.h"
    "/home/louis/Bureau/traitementCpp/dbcppp/include/dbcppp/CApi.h"
    "/home/louis/Bureau/traitementCpp/dbcppp/include/dbcppp/EnvironmentVariable.h"
    "/home/louis/Bureau/traitementCpp/dbcppp/include/dbcppp/Export.h"
    "/home/louis/Bureau/traitementCpp/dbcppp/include/dbcppp/Iterator.h"
    "/home/louis/Bureau/traitementCpp/dbcppp/include/dbcppp/Message.h"
    "/home/louis/Bureau/traitementCpp/dbcppp/include/dbcppp/Network.h"
    "/home/louis/Bureau/traitementCpp/dbcppp/include/dbcppp/Network2Functions.h"
    "/home/louis/Bureau/traitementCpp/dbcppp/include/dbcppp/Node.h"
    "/home/louis/Bureau/traitementCpp/dbcppp/include/dbcppp/Signal.h"
    "/home/louis/Bureau/traitementCpp/dbcppp/include/dbcppp/SignalGroup.h"
    "/home/louis/Bureau/traitementCpp/dbcppp/include/dbcppp/SignalMultiplexerValue.h"
    "/home/louis/Bureau/traitementCpp/dbcppp/include/dbcppp/SignalType.h"
    "/home/louis/Bureau/traitementCpp/dbcppp/include/dbcppp/ValueEncodingDescription.h"
    "/home/louis/Bureau/traitementCpp/dbcppp/include/dbcppp/ValueTable.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/louis/Bureau/traitementCpp/dbcppp/build/third-party/libxmlmm/cmake_install.cmake")
  include("/home/louis/Bureau/traitementCpp/dbcppp/build/third-party/cxxopts/cmake_install.cmake")
  include("/home/louis/Bureau/traitementCpp/dbcppp/build/tools/dbcppp/cmake_install.cmake")
  include("/home/louis/Bureau/traitementCpp/dbcppp/build/tests/cmake_install.cmake")
  include("/home/louis/Bureau/traitementCpp/dbcppp/build/examples/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/louis/Bureau/traitementCpp/dbcppp/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
