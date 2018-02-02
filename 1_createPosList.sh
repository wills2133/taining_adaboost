#!/bin/sh  

######### create posdata ##########
inpuitFile="${PWD}/posdata/*"
outputFile="${PWD}/posdata/posdata.dat"
#parameter example: 1 0 0 36 36
param="1 0 0 36 36"
#: > $OutputFile   
#clear old file
`rm ${outputFile}`
for file_a in ${inpuitFile}
do 
	temp_file=`basename ${file_a}`
	temp_file2="${temp_file} ${param}"
	#echo ${temp_file2}
	echo ${temp_file2} >> ${outputFile}
done

echo "${outputFile} create success!"
