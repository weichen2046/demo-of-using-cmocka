.PHONY : all

all : BUILD build/calculator_test

.PHONY : BUILD
BUILD :
	mkdir -p build

# Tweak this variable with your environment.
CMOCKA_SRC := cmocka-1.1.3

INCLUDES += -I$(CMOCKA_SRC)/include \
			-Iinclude

build/calculator.o : src/calculator.c
	$(CC) -g -Wall $(INCLUDES) -o $@ -c $^

build/calculator_test.o : tests/calculator_test.c
	$(CC) -g -Wall $(INCLUDES) -o $@ -c $^

build/calculator_test : build/calculator.o build/calculator_test.o
	$(CC) -o $@ $^ libcmocka.a

.PHONY : clean
clean :
	rm -rf build
