phony: test-01 test-02 test-03

test-01:
	./test/bats/bin/bats test/test-01.bats

test-02:
	./test/bats/bin/bats test/test-02.bats

test-03:
	./test/bats/bin/bats test/test-03.bats