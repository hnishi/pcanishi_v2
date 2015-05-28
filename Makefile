#INCLUDES = -I/usr/local/include -I./include -I. # include from these three dirs. # ??? it does not inclue ./include/nlib.h   ...why?
#LIBS = -L./libmisc -lmisc # ??? what is library?

CXX = g++ # compiler
CXXFLAGS = -std=c++0x -Wall -g -O2 -pipe -I ~/Dropbox/software/eigen-eigen-1306d75b4a21  # -DEIGEN_NO_DEBUG  # compiler option, -Wall enables strict warnings # -std=c++0x -std=c++11
TARGET = a.out # the name of the program you want to make
SRCS = pcanishi.cpp main.cpp pdbnishi.cpp tranishi.cpp centnishi.cpp quatnishi.cpp inpnishi.cpp math_nishi.cpp# the names of all source files
DEPS = nlib.h math_nishi.h # header; a dependency of *.o files
OBJS := $(SRCS:.cpp=.o) # change the suffix from cpp to o

$(TARGET): $(OBJS)
	g++ -Wall -o $@ $(OBJS)
$(OBJS): $(DEPS)	# enable rebuilding with changing header
#main.o: main.cpp
#	g++ -Wall -c main.cpp
#sub.o: sub.cpp
#	g++ -Wall -c sub.cpp
clean:
	rm -f $(TARGET) $(OBJS)

