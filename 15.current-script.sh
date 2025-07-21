#!/bin/bash

COURSE="Devops from current script"

echo "Before calling the other script, couse:$COURSE"

echo "process instance id of the current script: $$"

./16.other-script.sh

echo "After calling other script, course: $COURSE"