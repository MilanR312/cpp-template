

FLAGS := -fmodules-ts -std=c++20

.PHONY: all clean

DIR := modules
FILES := $(wildcard $(DIR)/*.cpp)

all: $(DIR)/*.gcm main.exe
	rm *.o
	echo "finished"

clean:
	rm *.exe
	rm gcm.cache/*.gcm


#	g++ $(FLAGS) -x c++-system-header @<

%.exe: %.cpp
	g++ $(FLAGS) $(FILES) $< -o $@

%.gcm: %.cpp
	g++ $(FLAGS) -c $<

