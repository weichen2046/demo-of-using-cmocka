#include "calculator.h"

int add(int a, int b)
{
    return a + b;
}

void swap(int* a, int* b)
{
    int tmp = *a;
    *a = *b;
    *b = tmp;
}
