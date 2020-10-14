Validation() {
    echo "Start Validation Test"
    docker -v

    FILEPATH=~/publiccodes

    [ -n "${PARAM_FPATH}" ] && echo "${PARAM_FPATH}" | grep -Eq '^\/.*' && FILEPATH="${PARAM_FPATH}" || FILEPATH=$FILEPATH"/${PARAM_FPATH}"
    [ -z "${P_REMOTE_BASE_URL}" ] && REMOTEPATH="" || REMOTEPATH="-remote-base-url ${P_REMOTE_BASE_URL}"
    [ -n "${P_DISABLE_STRICT}" ] && STRICT="-no-strict" || STRICT=""
    [ -n "${P_DISABLE_NETWORK}" ] && NETWORK="-no-network" || NETWORK=""

    ls
    echo \n\n\n
    pwd
    echo \n\n\n
    echo "Command:"
    echo "docker run -i italia/publiccode-parser-go /dev/stdin" "$REMOTEPATH" "$STRICT" "$NETWORK" " < " "${P_FILENAME}" 

    docker run -v "$FILEPATH" italia/publiccode-parser-go "${P_FILENAME}" "$REMOTEPATH" "$STRICT" "$NETWORK"
}

ORB_TEST_ENV="bats-core"
if [ "${0#*$ORB_TEST_ENV}" == "$0" ]; then
    Validation 
fi