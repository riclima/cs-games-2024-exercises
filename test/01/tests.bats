setup() {
	# get the containing directory of this file
	# use $BATS_TEST_FILENAME instead of ${BASH_SOURCE[0]} or $0,
	# as those will point to the bats executable's location or the preprocessed file respectively
	DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )"
	# make executables in src/ visible to PATH
	PATH="$DIR/../../src/01:$PATH"
}

@test "accepts input from stdin" {
	run rpncalc <<-EOF
	1
	2
	+
	2
	*
	2
	/
	1
	-
	EOF
	[ "$status" -eq 0 ]
	[ "$output" = "2.0" ]
}

@test "accepts input from a file" {
	run rpncalc $DIR/input.txt
	[ "$status" -eq 0 ]
	[ "$output" = "2.0" ]
}

@test "accepts input from a file and stdin" {
	run rpncalc $DIR/input.txt - <<-EOF
	2
	*
	EOF
	[ "$status" -eq 0 ]
	[ "$output" = "4.0" ]
}
