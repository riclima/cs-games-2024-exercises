setup() {
	# get the containing directory of this file
	# use $BATS_TEST_FILENAME instead of ${BASH_SOURCE[0]} or $0,
	# as those will point to the bats executable's location or the preprocessed file respectively
	DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )"
	# make executables in src/ visible to PATH
	PATH="$DIR/../../src/03:$PATH"
}

@test "banker 01" {
    run banker '[[1,2,3],[3,2,1]]'
    [ $output = "6" ]
}

@test "banker 02" {
    run banker '[[1,5],[7,3],[3,5]]'
    [ $output = "10" ]
}

@test "banker 02" {
    run banker '[[2,8,7],[7,1,3],[1,9,5]]'
    [ $output = "17" ]
}
