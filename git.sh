#!/bin/bash
TODAY=$(date)
HOST=$(hostname)
git switch dev
git add .
git commit -m "Changes committed: $TODAY from $HOST"
git remote set-url origin git@github.com:aashurov/gmloil.uz.git/
git push -u origin dev