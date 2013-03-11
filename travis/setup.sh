#!/bin/sh
echo '######################################'
echo '#                SETUP               #'
echo '#              - START -             #'
echo '######################################'

PATH=$PATH:/tmp/texlive/2012/bin/x86_64-linux
make forcebuild

echo '######################################'
echo '#                SETUP               #'
echo '#            - FINISHED -            #'
echo '######################################'