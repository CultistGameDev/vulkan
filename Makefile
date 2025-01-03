CC=g++
CFLAGS=-std=c++17 -O2
LDFLAGS=-lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

Vulkan:
	$(CC) $(CFLAGS) -o vulkan main.cpp $(LDFLAGS)

.PHONY: test clean

test: Vulkan
	./vulkan

clean:
	rm -f vulkan *.o
