#!/bin/sh
# Run this, e.g. update-navbar.sh gabbott.dev.


DELIMITER_BEG="<!-- nbbeg:ver0 -->"
DELIMITER_END="<!-- nbend:ver0 -->"
NEW_CONT_FILE="navbar-new.html"

# Here, $1 is the directory we want.
find - "../$1" -exec sed -i -ne "/$DELIMITER_BEG/ {p; r $NEW_CONT_FILE" -e ":a; n; /$DELIMITER_END/ {p; b}; ba}; p" {} \;

