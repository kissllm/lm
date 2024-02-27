#!/bin/sh -e
if [ -z "${KISS_HOOK:+x}" ]; then
    export KISS_HOOK=/var/db/hooks/subshell-on-build-fail
else
    [ -z "${KISS_HOOK##*"/var/db/hooks/subshell-on-build-fail"*}" ] ||
        export KISS_HOOK=/var/db/hooks/subshell-on-build-fail:$KISS_HOOK
fi
