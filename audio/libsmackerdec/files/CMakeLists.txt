cmake_minimum_required(VERSION 3.27)
project(smackerdec)

find_package(SDL2 REQUIRED)

option(BUILD_SHARED_LIBS "Build using shared libraries" ON)
add_library(smackerdec
	src/BitReader.cpp
	src/FileStream.cpp
	src/LogError.cpp
	src/SmackerDecoder.cpp)

target_include_directories(smackerdec PUBLIC include)

target_link_libraries(smackerdec PUBLIC SDL2::SDL2)

set(installable_libs smackerdec)
if(TARGET smackerdec)
  list(APPEND installable_libs smackerdec)
endif()
install(TARGETS ${installable_libs} DESTINATION lib)

install(FILES
	include/BitReader.h
	include/FileStream.h
	include/LogError.h
	include/SmackerDecoder.h
	DESTINATION include)
