#include <gtest/gtest.h>

#include "Foo.h"

class TestFoo : public ::testing::Test {
protected:
	void SetUp() override {}
	void TearDown() override {}
};

TEST_F(TestFoo, TestFoo) {
	EXPECT_EQ(foo(), "Hello world!");
}

auto main(int argc, char** argv) -> int {
	testing::InitGoogleTest();

	return RUN_ALL_TESTS();
}
