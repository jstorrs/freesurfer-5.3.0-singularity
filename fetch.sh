#!/bin/bash

cut -f 2- -d \* freesurfer.md5 \
    | wget -c -i - -x -nH --cut-dirs=2 \
	   --base=https://surfer.nmr.mgh.harvard.edu/pub/dist/

md5sum -c freesurfer.md5

