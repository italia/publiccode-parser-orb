Validation() {

    FILEPATH=~/publiccodes

    [ -n "${P_FILEPATH}" ] && echo "${P_FILEPATH}" | grep -Eq '^\/.*' && FILEPATH="${P_FILEPATH}" || FILEPATH=$FILEPATH"/${P_FILEPATH}"

    [ -z "${P_REMOTE_BASE_URL}" ] && REMOTEPATH="" || REMOTEPATH="-remote-base-url ${P_REMOTE_BASE_URL}"

    [ -n "${P_DISABLE_STRICT}" ] && STRICT="-no-strict" || STRICT=""

    [ -n "${P_DISABLE_NETWORK}" ] && NETWORK="-no-network" || NETWORK=""
    
    echo "docker run -v" "$FILEPATH" "italia/publiccode-parser-go" "${P_FILENAME}" "$REMOTEPATH" "$STRICT" "$NETWORK"

    docker run -v "$FILEPATH" italia/publiccode-parser-go "${P_FILENAME}" "$REMOTEPATH" "$STRICT" "$NETWORK"
}

ORB_TEST_ENV="bats-core"
if [ "${0#*$ORB_TEST_ENV}" == "$0" ]; then
    Validation 
fi