CXX = g++
CXXFLAGS = -Iinclude -std=c++17 -Wall -Wextra
LDFLAGS = -Llib -lglfw3 -framework CoreFoundation -framework CoreGraphics -framework IOKit -framework AppKit 

TARGET = particle_simulator
SOURCES = src/main.cpp src/glad.cpp

OBJECTS = $(SOURCES:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) -o $@ $(OBJECTS) $(LDFLAGS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(TARGET) $(OBJECTS)
