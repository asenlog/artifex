#!/bin/bash

git fetch -p origin
git branch --merged | egrep -v "(^\*|master|develop)" | xargs git branch -d