#!/bin/bash


inotifywait -m DIR_TO_MONITOR -e create -e moved_to |
    while read dir action file; do
        echo "The file '$file' appeared in directory '$dir' via '$action'"

	echo "syncing contents"

	TASKS_TO_EXECUTE_BASH_COMMANDS

        # do something with the file
    done

