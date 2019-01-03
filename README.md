# Simple demo for using [cmocka](https://cmocka.org/) unit testing framework

## Download cmocka source code

Download [cmocka](https://cmocka.org/files/) directly

or

```bash
git clone git://git.cryptomilk.org/projects/cmocka.git
```

Change `CMOCKA_SRC` variable in file [Makefile](./Makefile) according to your local cmocka source directory. Suppose that your local cmocka source directory is `<project_roo_dir>/cmocka-1.1.3`, then you should change `CMOCKA_SRC` as following:

```makefile
CMOCKA_SRC := cmocka-1.1.3
```

## Make your `libcmocka.a` (Optional)

Consult file `<cmocka_src>/INSTALL.md` for making cmocka from source.

Usually you can run the following commands:

```bash
cd <cmocka_src>/
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Debug .. make
make
```

And then cmocka shared libraries should be built out under `<cmocka_src>/build/src/`. Object file will located under  `<cmocka_src>/build/src/CMakeFiles/cmocka.dir/cmocka.c.o`.

Use the following command to make your `libcmocka.a`:

```bash
ar -rv libcmocka.a cmocka.c.o
```

## Build

```bash
cd <project_root_dir>
make
```

## Run tests

```bash
cd <project_root_dir>
./build/calculator_test
```

## Advanced usage of cmocka

Please refer to the official [documents](https://api.cmocka.org/index.html).
