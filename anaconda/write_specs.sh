#!/bin/bash

conda list > conda.packages
echo "Conda packages and versions written to $PWD/conda.packages"
conda list --explicit > conda.spec
echo "Conda spec written to $PWD/conda.spec"
envR=`which R`
if [ -n "$envR" ]
then
    R -e "write.table(installed.packages(),quote=FALSE,sep='    ')" > R.packages
    echo "R packages and versions written to $PWD/R.packages"
fi

    