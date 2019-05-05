# set tool chain path
if (NOT DEFINED ENV{ARM_LINARO_LINUX_GNUEABIHF_GCC_ROOT})
    message(FATAL_ERROR "ERROR: env ARM_LINARO_LINUX_GNUEABIHF_GCC_ROOT not set , export it before using cmake")
endif ()

set(TOOL_CHAIN_DIR $ENV{ARM_LINARO_LINUX_GNUEABIHF_GCC_ROOT})

# enable cross compile
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

# add inlcude and lib dir, this would be help if your ide doesn't recognize these directories
#include_directories(${TOOL_CHAIN_DIR}/include)
#link_directories(${TOOL_CHAIN_DIR}/lib)
#
#include_directories(${TOOL_CHAIN_DIR}/arm-linux-gnueabihf/include)
#link_directories(${TOOL_CHAIN_DIR}/arm-linux-gnueabihf/lib)
#
#include_directories(${TOOL_CHAIN_DIR}/arm-linux-gnueabihf/libc/usr/include)
#link_directories(${TOOL_CHAIN_DIR}/arm-linux-gnueabihf/libc/usr/lib)

# set compiler
set(CMAKE_C_COMPILER ${TOOL_CHAIN_DIR}/bin/arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER ${TOOL_CHAIN_DIR}/bin/arm-linux-gnueabihf-g++)

# set cmake search path
set(CMAKE_FIND_ROOT_PATH ${TOOL_CHAIN_DIR})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# set CXX standard
set(CMAKE_CXX_STANDARD 11)
# set(CMAKE_CXX_STANDARD_REQUIRED TRUE) # you may need to force enbale c++ 11
set(CMAKE_CXX_EXTENSIONS ON) # enable gnu++11 by default ,set OFF to use std++11

# Set C standard if necessary
set(CMAKE_C_STANDARD 11)
# set(CMAKE_C_STANDARD_REQUIRED TRUE) # you may need to force enbale c 11
set(CMAKE_C_EXTENSIONS ON) # enable gnu11 by default, set OFF to use std11
