.PHONY : all

all : BUILD build/calculator_test

.PHONY : BUILD
BUILD :
	mkdir -p build

ifeq ($(OS),Windows_NT)
    cmockalib := libcmocka.dll.a
else
	cmockalib := libcmocka.a
endif

# Tweak this variable with your environment.
CMOCKA_SRC := cmocka-1.1.3

INCLUDES += -I$(CMOCKA_SRC)/include \
			-Iinclude

build/calculator.o : src/calculator.c
	$(CC) -g -Wall $(INCLUDES) -o $@ -c $^

build/calculator_test.o : tests/calculator_test.c
	$(CC) -g -Wall $(INCLUDES) -o $@ -c $^

build/calculator_test : build/calculator.o build/calculator_test.o
	$(CC) -o $@ $^ $(cmockalib)

.PHONY : clean
clean :
	rm -rf build
