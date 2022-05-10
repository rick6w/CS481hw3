# CMake generated Testfile for 
# Source directory: /home/user1/CS481/hw3/hw3-rick6w/tests
# Build directory: /home/user1/CS481/hw3/hw3-rick6w/build/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(TestPI "./test_pi")
set_tests_properties(TestPI PROPERTIES  _BACKTRACE_TRIPLES "/home/user1/CS481/hw3/hw3-rick6w/tests/CMakeLists.txt;6;add_test;/home/user1/CS481/hw3/hw3-rick6w/tests/CMakeLists.txt;0;")
add_test(TestPIUneven "./test_pi_uneven")
set_tests_properties(TestPIUneven PROPERTIES  _BACKTRACE_TRIPLES "/home/user1/CS481/hw3/hw3-rick6w/tests/CMakeLists.txt;10;add_test;/home/user1/CS481/hw3/hw3-rick6w/tests/CMakeLists.txt;0;")
add_test(TestPIYield "./test_pi_yield")
set_tests_properties(TestPIYield PROPERTIES  _BACKTRACE_TRIPLES "/home/user1/CS481/hw3/hw3-rick6w/tests/CMakeLists.txt;14;add_test;/home/user1/CS481/hw3/hw3-rick6w/tests/CMakeLists.txt;0;")
add_test(TestSpinLock "./test_spin_lock")
set_tests_properties(TestSpinLock PROPERTIES  _BACKTRACE_TRIPLES "/home/user1/CS481/hw3/hw3-rick6w/tests/CMakeLists.txt;18;add_test;/home/user1/CS481/hw3/hw3-rick6w/tests/CMakeLists.txt;0;")
add_test(TestYieldLock "./test_yield_lock")
set_tests_properties(TestYieldLock PROPERTIES  _BACKTRACE_TRIPLES "/home/user1/CS481/hw3/hw3-rick6w/tests/CMakeLists.txt;22;add_test;/home/user1/CS481/hw3/hw3-rick6w/tests/CMakeLists.txt;0;")
add_test(TestSemaphoreLock "./test_semaphore_lock")
set_tests_properties(TestSemaphoreLock PROPERTIES  _BACKTRACE_TRIPLES "/home/user1/CS481/hw3/hw3-rick6w/tests/CMakeLists.txt;26;add_test;/home/user1/CS481/hw3/hw3-rick6w/tests/CMakeLists.txt;0;")
add_test(TestQueueLock "./test_queue_lock")
set_tests_properties(TestQueueLock PROPERTIES  _BACKTRACE_TRIPLES "/home/user1/CS481/hw3/hw3-rick6w/tests/CMakeLists.txt;30;add_test;/home/user1/CS481/hw3/hw3-rick6w/tests/CMakeLists.txt;0;")
add_test(TestCorrectnessYield "./test_lock_yield")
set_tests_properties(TestCorrectnessYield PROPERTIES  _BACKTRACE_TRIPLES "/home/user1/CS481/hw3/hw3-rick6w/tests/CMakeLists.txt;34;add_test;/home/user1/CS481/hw3/hw3-rick6w/tests/CMakeLists.txt;0;")
add_test(TestCorrectnessSemaphore "./test_semaphore")
set_tests_properties(TestCorrectnessSemaphore PROPERTIES  _BACKTRACE_TRIPLES "/home/user1/CS481/hw3/hw3-rick6w/tests/CMakeLists.txt;38;add_test;/home/user1/CS481/hw3/hw3-rick6w/tests/CMakeLists.txt;0;")
add_test(TestAddPopQueue "./test_queue")
set_tests_properties(TestAddPopQueue PROPERTIES  _BACKTRACE_TRIPLES "/home/user1/CS481/hw3/hw3-rick6w/tests/CMakeLists.txt;42;add_test;/home/user1/CS481/hw3/hw3-rick6w/tests/CMakeLists.txt;0;")
