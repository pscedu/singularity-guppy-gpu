#!/bin/bash

# Copyright © 2022 Pittsburgh Supercomputing Center.
# All Rights Reserved.

IMAGE=singularity-guppy-6.0.0.sif
DEFINITION=Singularity

if [ -f $IMAGE ]; then
	rm -fv $IMAGE
fi

sudo singularity build $IMAGE $DEFINITION

if [ -f $IMAGE ]; then
	exit 0
else
	exit 1
fi
