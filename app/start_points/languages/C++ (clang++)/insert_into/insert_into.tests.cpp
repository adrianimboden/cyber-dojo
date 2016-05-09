#include "insert_into.hpp"
#include <gmock/gmock.h>

#include <set>
#include <vector>

using namespace ::testing;

TEST(InsertInto, insert_into_set_works)
{
    std::set<int> unordered;

    insert_into(unordered, 5);

    ASSERT_THAT(unordered, Contains(5));
}

TEST(InsertInto, insert_into_vector_works)
{
    std::vector<int> ordered;

    insert_into(ordered, 5);

    ASSERT_THAT(ordered, Contains(5));
}

