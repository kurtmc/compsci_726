#!/bin/bash

TOTAL=$(git blame report.tex | wc -l)
KURT=$(git blame report.tex | grep Kurt | wc -l)
JENNA=$(git blame report.tex | grep Jenna | wc -l)

KURT=$(echo "$KURT / $TOTAL" | bc -l)
JENNA=$(echo "$JENNA / $TOTAL" | bc -l)

printf "Kurt = %.2f", $KURT
printf "Jenna = %.2f\n", "$JENNA"
