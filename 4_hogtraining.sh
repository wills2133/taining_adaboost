#!/bin/sh
`mkdir ./data/cascade`
./opencv_traincascade -data data/cascade -vec data/pos.vec -bg negdata/negdata.dat -numPos 600 -numNeg 3200 -numStages 21 -mode BASIC -featureType LBP -w 36 -h 36
