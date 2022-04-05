#!/bin/bash

for i in $(brew list --formula); do
  brew livecheck $i
done
