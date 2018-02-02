#!/bin/sh  

######### set parameters ##########
posW="36"
posH="36"
posNum="799"

######### create posdata ##########
inpuitFile="${PWD}/posdata/*"
outputFile="${PWD}/posdata/posdata.dat"
#: > $OutputFile   
#clear old file
`rm ${outputFile}`
for file_a in ${inpuitFile}
do 
	temp_file=`basename ${file_a}`
	temp_file2="${temp_file} 1 0 0 ${posW} ${posH}"
	#echo ${temp_file2}
	echo ${temp_file2} >> ${outputFile}
done

echo "${outputFile} create success!"

######### create negdata ##########
inpuitFile="${PWD}/negdata/*"
outputFile="${PWD}/negdata/negdata.dat"
#: > $OutputFile   
#clear old file
`rm ${outputFile}`
for file_a in ${inpuitFile}
do 
	temp_file=`basename ${file_a}`
	#echo ${temp_file}
	echo ${temp_file} >> ${outputFile}
done

echo "${outputFile} create success!"

######### create posvector ##########
./opencv_createsamples -info "posdata/posdata.dat" -vec data/pos.vec -num ${posNum} -w ${posW} -h ${posH}

######### train ##########
#`mkdir ./data/cascade`
#./opencv_traincascade -data data/cascade -vec data/pos.vec -bg negdata/negdata.dat -numPos 600 -numNeg 3200 -numStages 26 -mode BASIC -featureType HOG -w ${posW} -h #${posH}

#. ./4_hogtraining.sh


