setup() {
	# get the containing directory of this file
	# use $BATS_TEST_FILENAME instead of ${BASH_SOURCE[0]} or $0,
	# as those will point to the bats executable's location or the preprocessed file respectively
	DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )"
	# make executables in src/ visible to PATH
	PATH="$DIR/../../src/02:$PATH"
}

@test "anagram anagram nagaram" {
    run anagram anagram nagaram
    [ "$status" -eq 0 ]
}

@test "anagram rat car" {
    run anagram rat car
    [ "$status" -eq 1 ]
}
