cmake_minimum_required(VERSION 3.12)

project(coroutine CXX ASM)
file(GLOB source_file ${PROJECT_SOURCE_DIR}/*.cc Swtch.S)
enable_language(ASM)

set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_FLAGS "-Wall -Wextra")
set(CMAKE_CXX_FLAGS_DEBUG "-Og")
set(CMAKE_CXX_FLAGS_RELEASE "-O3")
set(CMAKE_ASM_FLAGS "${CFLAGS} -x assembler-with-cpp")
#set_source_files_properties(Switch.S PROPERTIES COMPILE_FLAGS "-x assembler-with-cpp")
add_executable(coroutine ${source_file})
