all: $(patsubst %.c,bin/%,$(wildcard *.c))

CFLAGS += -Wall -g -O0 -D_DEFAULT_SOURCE -std=c99 -lm

bin/prog3: map.h

bin/%: %.c bin/.STAMP Makefile
	gcc $< -o $@ $(CFLAGS)

bin/.STAMP:
	mkdir bin
	touch bin/.STAMP
