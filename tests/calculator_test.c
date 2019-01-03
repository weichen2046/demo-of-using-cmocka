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

int main(void)
{
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(test_add),
    };
    return cmocka_run_group_tests(tests, NULL /* setUp */, NULL /* tearDown */);
}
