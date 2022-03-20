.PHONY: all clean
CFLAGS  := -std=c++14 -Wall -O0 -g3 -Wunused-parameter -I/usr/include/boost
LDLIBS = -lboost_program_options
LDFLAGS = -L. \ # Search for libraries in the current directory
BINARY  := ./main.o

RM := rm -rf

all: $(BINARY)

amar123: main.cpp
	g++ -std=c++14 -Wall -O0 -g3 -Wunused-parameter -finstrument-functions main.cpp -I/home/amardeep_singh/Desktop/todosources/myboost/workingboost/include -o main.o -lboost_program_options -L/home/amardeep_singh/Desktop/todosources/myboost/workingboost/lib
#$(LDFLAGS) -print-search-dirs -print-libgcc-file-name -print-multi-os-directory -print-sysroot
#	g++ $(LDFLAGS) -std=c++17 -Wall -O0 -g3 -Wunused-parameter -I/usr/include/boost main.cpp -o main.o  $(LDLIBS)


clean:
	rm -rf main.o