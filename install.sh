#!/usr/bin/env sh

info() {

    printf '\033[1m\033[97mINFO:\033[0m %s\n' "$*"
}

ok() {

    printf '\033[1m\033[92mSUCCESS:\033[0m %s\n' "$*"
}

warn() {

    printf '\033[1m\033[93mWARN:\033[0m %s\n' "$*" >&2
}

err() {

    printf '\033[1m\033[91mERROR:\033[0m %s\n' "$*" >&2
}

readonly DEST_DIR="${HOME}/.local/bin"

while getopts ':u' opt; do

    case "${opt}" in
        (u)

            u_opt='true'
        ;;
        ('?')

            err "Invalid option \"-${OPTARG}\"."

            exit 1
        ;;
    esac

done

: ${u_opt:=false}

command -vp install 1> /dev/null 2>&1 || {

    err 'Missing "install" command, aborting installation.'

    exit 1
}

[ -d "${DEST_DIR}" ] || {

    warn "Missing target directory \"${DEST_DIR}\"."

    mkdir -p "${DEST_DIR}" 1> /dev/null 2>&1
}

if ${u_opt}; then

    f=0

    for s in src/*; do

        if rm "${DEST_DIR}/${s##*/}" 1> /dev/null 2>&1; then
            info "Removed script ${s##*/}"

        else
            err "Could not remove script ${s##*/}"

            f=$(( f + 1 ))

        fi

    done

    if [ ${f} -gt 0 ]; then
        printf '\n'

        warn 'One or more scripts could not be deleted.'

        exit 1

    else
        printf '\n'

        ok 'Removed scripts successfully.'

        exit 0

    fi

else
    printf 'Copying scripts...\n\n'

    install -v -m 700 -t "${DEST_DIR}" src/* 2>&- || {

        err "Failed copying scripts to target directory \"${DEST_DIR}\"."

        exit 1
    }

fi

# Check $PATH.
IFS=':'

for dir in ${PATH}; do

    [ "${dir}" = "${DEST_DIR}" ] && {

        printf '\n'

        ok 'Installation completed.'

        exit 0
    }

done

printf '\n' >&2

warn "Add \"${DEST_DIR}\" to \$PATH to complete installation."

exit 1
