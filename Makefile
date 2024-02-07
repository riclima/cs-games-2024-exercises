phony: test-01 test-02 test-03

test-01:
	./test/bats/bin/bats test/01/tests.bats

test-02:
	./test/bats/bin/bats test/02/tests.bats

test-03:
	./test/bats/bin/bats test/03/tests.bats