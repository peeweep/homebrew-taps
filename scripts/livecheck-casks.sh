#!/bin/bash

for i in $(brew list --casks); do
  brew livecheck $i
done
