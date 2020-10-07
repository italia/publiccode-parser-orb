# Runs prior to every test
setup() {
    # Load our script file.
    source ./src/scripts/pcvalidate.sh
}

@test '1: Test It' {

    export P_FILENAME=""
    export PARAM_FPATH="$(pwd)"
    export P_DISABLE_NETWORK="false"
    export P_DISABLE_STRICT="false"
    export P_REMOTE_BASE_URL=""

    docker -v
    docker run hello-world
    # Capture the output of our "Greet" function
    result=$(Validation)
    return result
}