cmake_minimum_required(VERSION 3.21)
project(grocery_scraper)

set(CMAKE_CXX_STANDARD 14)

set(CMAKE_FIND_DEBUG_MODE TRUE)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake")

set(PROJECT_SOURCE
        src/main.cpp)

add_executable(${CMAKE_PROJECT_NAME} ${PROJECT_SOURCE})

include(FindPkgConfig)
find_package(Curl REQUIRED)

include_directories(${CURL_INCLUDE_DIR})
target_link_libraries(${PROJECT_NAME} ${CURL_LIBRARY})