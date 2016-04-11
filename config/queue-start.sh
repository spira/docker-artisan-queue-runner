#!/bin/bash

#set default values for env
export QUEUE=${QUEUE:-default}
export TRIES=${TRIES:-3}
export FAILDELAY=${FAILDELAY:-60}

echo "Starting queue '${QUEUE}' with '${TRIES}' tries and failed delay ${FAILDELAY}s"

which supervisord
supervisord -v

echo "Supervisord conf /etc/supervisor/supervisord.conf: "
cat /etc/supervisor/supervisord.conf

supervisord -c /etc/supervisor/supervisord.conf