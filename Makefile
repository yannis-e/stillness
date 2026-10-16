CC := gcc
CFLAGS := -std=c17 -Wall -Wextra -Wpedantic -Werror -Iinclude
LDFLAGS :=

TARGET := build/stillness
SOURCES := $(shell find src -name '*.c')

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(SOURCES)
	mkdir -p build
	$(CC) $(CFLAGS) $(SOURCES) $(LDFLAGS) -o $@

clean:
	rm -rf build
