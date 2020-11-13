Validation() {
    PC_FILENAME=${PC_FILENAME:-"publiccode.yml"}
    PC_PATH=${PC_PATH:-"."}

    [ -z "$PC_REMOTE_BASE_URL" ] && PC_REMOTE_BASE_URL="" || PC_REMOTE_BASE_URL="-remote-base-url ${PC_REMOTE_BASE_URL}"
    [ "${PC_NO_NETWORK}" == "true" ] && PC_NO_NETWORK="-no-network" || PC_NO_NETWORK=""
    [ "${PC_NO_STRICT}" == "true" ] && PC_NO_STRICT="-no-strict" || PC_NO_STRICT=""

    pcvalidate $PC_REMOTE_BASE_URL $PC_NO_STRICT $PC_NO_NETWORK $PC_PATH/${PC_FILENAME}
}

ORB_TEST_ENV="bats-core"
if [ "${0#*$ORB_TEST_ENV}" == "$0" ]; then
    Validation
fi
