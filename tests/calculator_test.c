#include <stdio.h>
#include <setjmp.h>
#include "cmocka.h"
#include "calculator.h"

static void test_add(void **state)
{
    (void)state; /* unused */

    assert_int_equal(add(3, 3), 6);
    assert_int_equal(add(3, -3), 0);
}

static void test_swap(void **state)
{
    (void)state; /* unused */

    int a = 1, b = 2;
    swap(&a, &b);

    assert_int_equal(2, a);
    assert_int_equal(1, b);
}

int main(void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_add),
        cmocka_unit_test(test_swap),
    };
    return cmocka_run_group_tests(tests, NULL /* setUp */, NULL /* tearDown */);
}
