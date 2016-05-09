CXXFLAGS += -I. -std=c++14 -Wall -Wextra -Werror
CXXFLAGS += -fsanitize=undefined -fno-sanitize-recover=undefined
CXXFLAGS += -fsanitize=address -fno-omit-frame-pointer

GTEST_LIBS = -lgtest -lgmock -lgmock_main -pthread

HPP_FILES = $(wildcard *.hpp)
CPP_FILES = $(wildcard *.cpp)

.PHONY: test.output
test.output: test makefile
	@./$< --gtest_shuffle

test: makefile $(CPP_FILES)
	@$(CXX) $(CXXFLAGS) -O $(CPP_FILES) $(GTEST_LIBS) -o $@
