# Runs prior to every test
setup() {
    # Load our script file.
    source ./src/scripts/pcvalidate.sh
}

@test '1: Test It' {

    export P_FILENAME=""
    export PARAM_FPATH=""
    export P_DISABLE_NETWORK=""
    export P_DISABLE_STRICT=""
    export P_REMOTE_BASE_URL=""

    # Capture the output of our "Greet" function
    result=$(Validation)
    return result
}