#!/bin/bash

set $SSH_ORIGINAL_COMMAND

if [ $SSH_ORIGINAL_COMMAND = "date" ]
then
    echo 'Just no.'
else
    exec "$@"
fi

