cmake_minimum_required( VERSION 3.0 )
project( hw3 )

list( APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake )

enable_language( CXX )
set( CMAKE_CXX_STANDARD 11 )
set( CMAKE_BUILD_TYPE Debug )

set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wredundant-decls -Wcast-align -Wshadow" )

enable_testing()

set( hw3_INCDIR "${CMAKE_CURRENT_SOURCE_DIR}/.." )
include_directories( "external" )

#/////////////////////////// star information of google test ///////////////////////////////
set(GOOGLETEST_ROOT external/googletest CACHE STRING "Google Test source root")
include_directories(
    ${PROJECT_SOURCE_DIR}/${GOOGLETEST_ROOT}
    ${PROJECT_SOURCE_DIR}/${GOOGLETEST_ROOT}/include
    )
set(GOOGLETEST_SOURCES
    ${PROJECT_SOURCE_DIR}/${GOOGLETEST_ROOT}/src/gtest-all.cc
    ${PROJECT_SOURCE_DIR}/${GOOGLETEST_ROOT}/src/gtest_main.cc
    )
foreach(_source ${GOOGLETEST_SOURCES})
    set_source_files_properties(${_source} PROPERTIES GENERATED 1)
endforeach()
add_library(googletest STATIC ${GOOGLETEST_SOURCES})
target_link_libraries(googletest pthread)
#///////////////////////////// end information of google test //////////////////////////////


set(COMMON_SOURCES
  queue.hpp
  queue.cpp
  lock.hpp
  intercept.hpp
  my_intercept.hpp
  my_intercept.cpp
  compute_pi.hpp
  compute_pi.cpp
  compute_pi_helper.cpp
)  

add_library(hw3_mutex STATIC ${COMMON_SOURCES} mutex_lock.cpp)
target_link_libraries(hw3_mutex pthread)

add_library( hw3_ticket_spin STATIC ${COMMON_SOURCES} ticket_spin_lock.cpp )
target_link_libraries( hw3_ticket_spin pthread )

add_library( hw3_ticket_yield STATIC ${COMMON_SOURCES} ticket_yield_lock.cpp )
target_link_libraries( hw3_ticket_yield pthread )

add_library( hw3_queue STATIC ${COMMON_SOURCES} queue_lock.cpp )
target_link_libraries( hw3_queue pthread )

add_library( hw3_semaphore STATIC ${COMMON_SOURCES} semaphore_lock.cpp )
target_link_libraries( hw3_semaphore pthread )

add_subdirectory( tests )
