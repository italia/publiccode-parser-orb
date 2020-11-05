# Runs prior to every test
setup() {
    source ./src/scripts/publiccode-validate.sh

    export PC_FILENAME=""
    export PC_PATH=""
    export PC_NO_NETWORK=""
    export PC_NO_STRICT=""
    export PC_REMOTE_BASE_URL=""
}

@test 'with ./publiccode.yml' {
    result="$(Validation)"
    [ "$result" == "validation ok" ]
}

@test 'with ./publiccodes/publiccode.yml' {
    export PC_PATH="publiccodes"

    result="$(Validation)"
    [ "$result" == "validation ok" ]
}
