PGM		= test
FILES 	= src/main.cpp
OBJS 	= $(FILES:.cpp=.o)

CXX		= g++

all:	$(PGM)

$(PGM):	$(OBJS)
	$(CXX) -o $@ $^

%.o:	%.cpp
	$(CXX) -c $< -o $@

run:
	./test

docs:
	cd documentation && make html

spelling:
	cd documentation && make spelling
